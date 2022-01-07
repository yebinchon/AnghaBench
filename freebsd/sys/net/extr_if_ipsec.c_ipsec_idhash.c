
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipsec_iflist {int dummy; } ;
typedef int id ;


 int FNV1_32_INIT ;
 int IPSEC_HASH_SIZE ;
 struct ipsec_iflist* V_ipsec_idhtbl ;
 int fnv_32_buf (int *,int,int ) ;

__attribute__((used)) static struct ipsec_iflist *
ipsec_idhash(uint32_t id)
{

 return (&V_ipsec_idhtbl[fnv_32_buf(&id, sizeof(id),
     FNV1_32_INIT) & (IPSEC_HASH_SIZE - 1)]);
}
