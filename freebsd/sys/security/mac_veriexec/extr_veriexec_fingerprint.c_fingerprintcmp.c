
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_veriexec_file_info {TYPE_1__* ops; int fingerprint; } ;
struct TYPE_2__ {int digest_len; } ;


 int memcmp (int ,unsigned char*,int ) ;

__attribute__((used)) static int
fingerprintcmp(struct mac_veriexec_file_info *ip, unsigned char *digest)
{

 return memcmp(ip->fingerprint, digest, ip->ops->digest_len);
}
