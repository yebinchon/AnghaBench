
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {void* util; } ;
struct apply_state {int limit_by_name; } ;


 struct string_list_item* string_list_append (int *,char const*) ;

__attribute__((used)) static void add_name_limit(struct apply_state *state,
      const char *name,
      int exclude)
{
 struct string_list_item *it;

 it = string_list_append(&state->limit_by_name, name);
 it->util = exclude ? ((void*)0) : (void *) 1;
}
