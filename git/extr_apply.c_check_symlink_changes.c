
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int util; } ;
struct apply_state {int symlink_changes; } ;


 struct string_list_item* string_list_lookup (int *,char const*) ;

__attribute__((used)) static uintptr_t check_symlink_changes(struct apply_state *state, const char *path)
{
 struct string_list_item *ent;

 ent = string_list_lookup(&state->symlink_changes, path);
 if (!ent)
  return 0;
 return (uintptr_t)ent->util;
}
