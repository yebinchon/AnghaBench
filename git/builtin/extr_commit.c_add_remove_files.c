
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; scalar_t__ util; } ;
struct string_list {int nr; struct string_list_item* items; } ;
struct stat {int dummy; } ;


 int _ (char*) ;
 scalar_t__ add_to_cache (int ,struct stat*,int ) ;
 int die (int ) ;
 int lstat (int ,struct stat*) ;
 int remove_file_from_cache (int ) ;

__attribute__((used)) static void add_remove_files(struct string_list *list)
{
 int i;
 for (i = 0; i < list->nr; i++) {
  struct stat st;
  struct string_list_item *p = &(list->items[i]);


  if (p->util)
   continue;

  if (!lstat(p->string, &st)) {
   if (add_to_cache(p->string, &st, 0))
    die(_("updating files failed"));
  } else
   remove_file_from_cache(p->string);
 }
}
