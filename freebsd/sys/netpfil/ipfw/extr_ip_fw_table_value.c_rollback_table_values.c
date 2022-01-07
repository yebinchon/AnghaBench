
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tentry_info {scalar_t__ value; } ;
struct tableop_state {int count; struct tentry_info* tei; int vshared; int tc; struct ip_fw_chain* ch; } ;
struct table_value {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int get_value_ptrs (struct ip_fw_chain*,int ,int ,struct table_value**,struct namedobj_instance**) ;
 int unref_table_value (struct namedobj_instance*,struct table_value*,scalar_t__) ;

void
rollback_table_values(struct tableop_state *ts)
{
 struct ip_fw_chain *ch;
 struct table_value *pval;
 struct tentry_info *ptei;
 struct namedobj_instance *vi;
 int i;

 ch = ts->ch;

 IPFW_UH_WLOCK_ASSERT(ch);


 get_value_ptrs(ch, ts->tc, ts->vshared, &pval, &vi);

 for (i = 0; i < ts->count; i++) {
  ptei = &ts->tei[i];

  if (ptei->value == 0)
   continue;

  unref_table_value(vi, pval, ptei->value);
 }
}
