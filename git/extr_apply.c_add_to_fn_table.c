
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct patch* util; } ;
struct patch {int * old_name; scalar_t__ is_rename; int * new_name; } ;
struct apply_state {int fn_table; } ;


 struct patch* PATH_WAS_DELETED ;
 struct string_list_item* string_list_insert (int *,int *) ;

__attribute__((used)) static void add_to_fn_table(struct apply_state *state, struct patch *patch)
{
 struct string_list_item *item;






 if (patch->new_name != ((void*)0)) {
  item = string_list_insert(&state->fn_table, patch->new_name);
  item->util = patch;
 }





 if ((patch->new_name == ((void*)0)) || (patch->is_rename)) {
  item = string_list_insert(&state->fn_table, patch->old_name);
  item->util = PATH_WAS_DELETED;
 }
}
