
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct named_object {int dummy; } ;
struct table_config {struct named_object no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int KASSERT (int ,char*) ;
 scalar_t__ ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;

__attribute__((used)) static struct named_object *
table_findbykidx(struct ip_fw_chain *ch, uint16_t idx)
{
 struct namedobj_instance *ni;
 struct table_config *tc;

 IPFW_UH_WLOCK_ASSERT(ch);
 ni = CHAIN_TO_NI(ch);
 tc = (struct table_config *)ipfw_objhash_lookup_kidx(ni, idx);
 KASSERT(tc != ((void*)0), ("Table with index %d not found", idx));

 return (&tc->no);
}
