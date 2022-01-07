
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; scalar_t__ util; } ;
struct string_list {int strdup_strings; int nr; struct string_list_item* items; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 int for_each_remote (int ,struct string_list*) ;
 int get_one_entry ;
 int printf (char*,char*,...) ;
 int strcmp (char*,char*) ;
 int string_list_clear (struct string_list*,int) ;
 int string_list_sort (struct string_list*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int show_all(void)
{
 struct string_list list = STRING_LIST_INIT_NODUP;
 int result;

 list.strdup_strings = 1;
 result = for_each_remote(get_one_entry, &list);

 if (!result) {
  int i;

  string_list_sort(&list);
  for (i = 0; i < list.nr; i++) {
   struct string_list_item *item = list.items + i;
   if (verbose)
    printf("%s\t%s\n", item->string,
     item->util ? (const char *)item->util : "");
   else {
    if (i && !strcmp((item - 1)->string, item->string))
     continue;
    printf("%s\n", item->string);
   }
  }
 }
 string_list_clear(&list, 1);
 return result;
}
