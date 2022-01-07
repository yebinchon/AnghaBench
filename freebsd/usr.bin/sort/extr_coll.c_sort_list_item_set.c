
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {struct bwstring* str; int ka; } ;
struct bwstring {int dummy; } ;


 int bwsfree (struct bwstring*) ;
 int clean_keys_array (struct bwstring*,int *) ;
 int sort_list_item_make_key (struct sort_list_item*) ;

void
sort_list_item_set(struct sort_list_item *si, struct bwstring *str)
{

 if (si) {
  clean_keys_array(si->str, &(si->ka));
  if (si->str) {
   if (si->str == str) {

    return;
   } else {
    bwsfree(si->str);
    si->str = ((void*)0);
   }
  }
  si->str = str;
  sort_list_item_make_key(si);
 }
}
