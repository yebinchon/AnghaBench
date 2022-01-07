
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {void* util; } ;
struct apply_state {int symlink_changes; } ;


 struct string_list_item* string_list_insert (int *,char const*) ;
 struct string_list_item* string_list_lookup (int *,char const*) ;

__attribute__((used)) static uintptr_t register_symlink_changes(struct apply_state *state,
       const char *path,
       uintptr_t what)
{
 struct string_list_item *ent;

 ent = string_list_lookup(&state->symlink_changes, path);
 if (!ent) {
  ent = string_list_insert(&state->symlink_changes, path);
  ent->util = (void *)0;
 }
 ent->util = (void *)(what | ((uintptr_t)ent->util));
 return (uintptr_t)ent->util;
}
