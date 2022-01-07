
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int type; int uidx; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int IPFW_TLV_NPTV6_NAME ;
 int NPTV6_DEBUG (char*,int ,int ,int) ;
 int ipfw_objhash_find_type (int ,struct tid_info*,int ,struct named_object**) ;

__attribute__((used)) static int
nptv6_findbyname(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
 int err;

 err = ipfw_objhash_find_type(CHAIN_TO_SRV(ch), ti,
     IPFW_TLV_NPTV6_NAME, pno);
 NPTV6_DEBUG("uidx %u, type %u, err %d", ti->uidx, ti->type, err);
 return (err);
}
