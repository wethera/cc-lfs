#!/bin/bash
lustre_version=${1-2.10}

cat << EOF >/etc/yum.repos.d/LustrePack.repo
[lustreserver]
name=lustreserver
baseurl=https://downloads.whamcloud.com/public/lustre/latest-${lustre_version}-release/el7/patchless-ldiskfs-server/
#baseurl=https://downloads.whamcloud.com/public/lustre/lustre-2.12.4/el7/patchless-ldiskfs-server/
enabled=1
gpgcheck=0

[e2fs]
name=e2fs
baseurl=https://downloads.whamcloud.com/public/e2fsprogs/latest/el7/
#baseurl=https://downloads.whamcloud.com/public/e2fsprogs/1.44.5.wc1/el7/
enabled=1
gpgcheck=0

[lustreclient]
name=lustreclient
baseurl=https://downloads.whamcloud.com/public/lustre/latest-${lustre_version}-release/el7/client/
#baseurl=https://downloads.whamcloud.com/public/lustre/lustre-2.12.4/el7/client/
enabled=1
gpgcheck=0
EOF
