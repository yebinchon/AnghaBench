
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct namedobj_instance {int dummy; } ;
struct named_object {int name; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int KASSERT (int ,char*) ;
 int NPTV6_DEBUG (char*,int ,int ) ;
 struct named_object* ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;

__attribute__((used)) static struct named_object *
nptv6_findbykidx(struct ip_fw_chain *ch, uint16_t idx)
{
 struct namedobj_instance *ni;
 struct named_object *no;

 IPFW_UH_WLOCK_ASSERT(ch);
 ni = CHAIN_TO_SRV(ch);
 no = ipfw_objhash_lookup_kidx(ni, idx);
 KASSERT(no != ((void*)0), ("NPT with index %d not found", idx));

 NPTV6_DEBUG("kidx %u -> %s", idx, no->name);
 return (no);
}
