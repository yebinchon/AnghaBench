
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct namedobj_instance {int dummy; } ;
struct named_object {int refcnt; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int KASSERT (int ,char*) ;
 struct named_object* ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;

void
ipfw_unref_table(struct ip_fw_chain *ch, uint16_t kidx)
{

 struct namedobj_instance *ni;
 struct named_object *no;

 IPFW_UH_WLOCK_ASSERT(ch);
 ni = CHAIN_TO_NI(ch);
 no = ipfw_objhash_lookup_kidx(ni, kidx);
 KASSERT(no != ((void*)0), ("Table with index %d not found", kidx));
 no->refcnt--;
}
