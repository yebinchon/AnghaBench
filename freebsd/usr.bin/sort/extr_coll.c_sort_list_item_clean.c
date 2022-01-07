
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int * str; int ka; } ;


 int bwsfree (int *) ;
 int clean_keys_array (int *,int *) ;

void
sort_list_item_clean(struct sort_list_item *si)
{

 if (si) {
  clean_keys_array(si->str, &(si->ka));
  if (si->str) {
   bwsfree(si->str);
   si->str = ((void*)0);
  }
 }
}
