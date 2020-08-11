#!/usr/bin/env sh

: ${TRUSTED_HOSTS:='"localhost", "127.0.0.1", "172.25.0.200", "172.25.0.201", "172.25.0.110"'}
: ${BANNED_HOSTS:=''}
: ${WS_SECRET:='word'}

echo "Trusted hosts: [$TRUSTED_HOSTS]"
echo "Banned hosts: [$BANNED_HOSTS]"
echo "WS secret: $WS_SECRET"

cd /app

echo "module.exports = {trusted: [$TRUSTED_HOSTS], banned: [$BANNED_HOSTS], reserved: []};" > lib/utils/config.js

WS_SECRET=$WS_SECRET npm start
