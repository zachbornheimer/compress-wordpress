#!/bin/sh

! test -e /usr/sbin/compress-wordpress && ! test -e /usr/local/sbin/compress-wordpress && cp compress-wordpress /usr/local/sbin/compress-wordpress && chmod +x /usr/local/sbin/compress-wordpress && exit 0;

echo "Cannot install compress-wordpress."
test -e /usr/local/sbin/compress-wordpress;

if [ $? == 0 ]
then
    echo "File (/usr/local/sbin/compress-wordpress) Exists...Thats Bad";
else
    echo "File (/usr/local/sbin/compress-wordpress) Does Not Exist...Thats Good.";
fi

test -e /usr/sbin/compress-wordpress;

if [ $? == 0 ]
then
    echo "File (/usr/sbin/compress-wordpress) Exists...Thats Bad";
else
    echo "File (/usr/sbin/compress-wordpress) Does Not Exist...Thats Good.";
fi
