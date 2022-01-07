
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int IPFW_TLV_NAT64LSN_NAME ;
 int ipfw_objhash_find_type (int ,struct tid_info*,int ,struct named_object**) ;

__attribute__((used)) static int
nat64lsn_findbyname(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
 int err;

 err = ipfw_objhash_find_type(CHAIN_TO_SRV(ch), ti,
     IPFW_TLV_NAT64LSN_NAME, pno);
 return (err);
}
