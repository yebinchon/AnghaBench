
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {scalar_t__ util; } ;
struct patch {int dummy; } ;
struct apply_state {int fn_table; } ;


 struct string_list_item* string_list_lookup (int *,char const*) ;

__attribute__((used)) static struct patch *in_fn_table(struct apply_state *state, const char *name)
{
 struct string_list_item *item;

 if (name == ((void*)0))
  return ((void*)0);

 item = string_list_lookup(&state->fn_table, name);
 if (item != ((void*)0))
  return (struct patch *)item->util;

 return ((void*)0);
}
