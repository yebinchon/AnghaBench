
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tentry_info {scalar_t__ value; int flags; } ;
struct table_value {int dummy; } ;
struct table_config {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int TEI_FLAGS_ADDED ;
 int get_value_ptrs (struct ip_fw_chain*,struct table_config*,int,struct table_value**,struct namedobj_instance**) ;
 int unref_table_value (struct namedobj_instance*,struct table_value*,scalar_t__) ;

void
ipfw_garbage_table_values(struct ip_fw_chain *ch, struct table_config *tc,
    struct tentry_info *tei, uint32_t count, int rollback)
{
 int i;
 struct tentry_info *ptei;
 struct table_value *pval;
 struct namedobj_instance *vi;
 get_value_ptrs(ch, tc, 1, &pval, &vi);

 for (i = 0; i < count; i++) {
  ptei = &tei[i];

  if (ptei->value == 0) {





   continue;
  }

  if ((ptei->flags & TEI_FLAGS_ADDED) != 0 && rollback == 0) {
   ptei->value = 0;
   continue;
  }

  unref_table_value(vi, pval, ptei->value);
  ptei->value = 0;
 }
}
