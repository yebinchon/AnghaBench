
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_value {int dummy; } ;
struct table_config {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {scalar_t__ valuestate; } ;


 struct namedobj_instance* CHAIN_TO_VI (struct ip_fw_chain*) ;

__attribute__((used)) static void
get_value_ptrs(struct ip_fw_chain *ch, struct table_config *tc, int vshared,
    struct table_value **ptv, struct namedobj_instance **pvi)
{
 struct table_value *pval;
 struct namedobj_instance *vi;

 if (vshared != 0) {
  pval = (struct table_value *)ch->valuestate;
  vi = CHAIN_TO_VI(ch);
 } else {
  pval = ((void*)0);
  vi = ((void*)0);

 }

 if (ptv != ((void*)0))
  *ptv = pval;
 if (pvi != ((void*)0))
  *pvi = vi;
}
