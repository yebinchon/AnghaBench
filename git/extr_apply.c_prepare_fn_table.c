
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int util; } ;
struct patch {struct patch* next; int old_name; scalar_t__ is_rename; int * new_name; } ;
struct apply_state {int fn_table; } ;


 int PATH_TO_BE_DELETED ;
 struct string_list_item* string_list_insert (int *,int ) ;

__attribute__((used)) static void prepare_fn_table(struct apply_state *state, struct patch *patch)
{



 while (patch) {
  if ((patch->new_name == ((void*)0)) || (patch->is_rename)) {
   struct string_list_item *item;
   item = string_list_insert(&state->fn_table, patch->old_name);
   item->util = PATH_TO_BE_DELETED;
  }
  patch = patch->next;
 }
}
