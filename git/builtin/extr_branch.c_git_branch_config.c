
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {int dummy; } ;


 int LOOKUP_CONFIG (int ,char const*) ;
 int * branch_colors ;
 int branch_use_color ;
 int colopts ;
 int color_branch_slots ;
 int color_parse (char const*,int ) ;
 int config_error_nonbool (char const*) ;
 int git_color_default_config (char const*,char const*,void*) ;
 int git_column_config (char const*,char const*,char*,int *) ;
 int git_config_colorbool (char const*,char const*) ;
 int parse_ref_sorting (struct ref_sorting**,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_branch_config(const char *var, const char *value, void *cb)
{
 const char *slot_name;
 struct ref_sorting **sorting_tail = (struct ref_sorting **)cb;

 if (!strcmp(var, "branch.sort")) {
  if (!value)
   return config_error_nonbool(var);
  parse_ref_sorting(sorting_tail, value);
  return 0;
 }

 if (starts_with(var, "column."))
  return git_column_config(var, value, "branch", &colopts);
 if (!strcmp(var, "color.branch")) {
  branch_use_color = git_config_colorbool(var, value);
  return 0;
 }
 if (skip_prefix(var, "color.branch.", &slot_name)) {
  int slot = LOOKUP_CONFIG(color_branch_slots, slot_name);
  if (slot < 0)
   return 0;
  if (!value)
   return config_error_nonbool(var);
  return color_parse(value, branch_colors[slot]);
 }
 return git_color_default_config(var, value, cb);
}
