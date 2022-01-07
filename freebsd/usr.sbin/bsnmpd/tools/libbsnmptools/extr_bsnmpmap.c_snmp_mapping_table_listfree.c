
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_table_index {int dummy; } ;
struct snmp_index_entry {int index_list; struct snmp_index_entry* string; } ;


 struct snmp_index_entry* SLIST_FIRST (struct snmp_table_index*) ;
 int SLIST_REMOVE_HEAD (struct snmp_table_index*,int ) ;
 int free (struct snmp_index_entry*) ;
 int link ;
 int snmp_index_listfree (int *) ;

__attribute__((used)) static void
snmp_mapping_table_listfree(struct snmp_table_index *headp)
{
 struct snmp_index_entry *t;

 while ((t = SLIST_FIRST(headp)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(headp, link);

  if (t->string)
   free(t->string);

  snmp_index_listfree(&(t->index_list));
  free(t);
 }
}
