
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int KASSERT (int ,char*) ;
 struct named_object* ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;

__attribute__((used)) static struct named_object *
nat64lsn_findbykidx(struct ip_fw_chain *ch, uint16_t idx)
{
 struct namedobj_instance *ni;
 struct named_object *no;

 IPFW_UH_WLOCK_ASSERT(ch);
 ni = CHAIN_TO_SRV(ch);
 no = ipfw_objhash_lookup_kidx(ni, idx);
 KASSERT(no != ((void*)0), ("NAT64LSN with index %d not found", idx));

 return (no);
}
