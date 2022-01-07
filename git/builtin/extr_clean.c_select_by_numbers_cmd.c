
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list_item {char* string; } ;
struct menu_stuff {int nr; TYPE_1__* stuff; int type; } ;
struct menu_opts {scalar_t__ flags; int prompt; int * header; } ;
struct TYPE_3__ {int nr; struct string_list_item* items; } ;


 int MENU_STUFF_TYPE_STRING_LIST ;
 int N_ (char*) ;
 TYPE_1__ del_list ;
 int free (int*) ;
 int* list_and_choose (struct menu_opts*,struct menu_stuff*) ;
 int string_list_remove_empty_items (TYPE_1__*,int ) ;

__attribute__((used)) static int select_by_numbers_cmd(void)
{
 struct menu_opts menu_opts;
 struct menu_stuff menu_stuff;
 struct string_list_item *items;
 int *chosen;
 int i, j;

 menu_opts.header = ((void*)0);
 menu_opts.prompt = N_("Select items to delete");
 menu_opts.flags = 0;

 menu_stuff.type = MENU_STUFF_TYPE_STRING_LIST;
 menu_stuff.stuff = &del_list;
 menu_stuff.nr = del_list.nr;

 chosen = list_and_choose(&menu_opts, &menu_stuff);
 items = del_list.items;
 for (i = 0, j = 0; i < del_list.nr; i++) {
  if (i < chosen[j]) {
   *(items[i].string) = '\0';
  } else if (i == chosen[j]) {

   j++;
   continue;
  } else {

   *(items[i].string) = '\0';
  }
 }

 string_list_remove_empty_items(&del_list, 0);

 free(chosen);
 return 0;
}
