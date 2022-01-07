
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOOKUP_CONFIG (int ,char const*) ;
 int * clean_colors ;
 int clean_use_color ;
 int colopts ;
 int color_interactive_slots ;
 int color_parse (char const*,int ) ;
 int config_error_nonbool (char const*) ;
 int force ;
 int git_color_default_config (char const*,char const*,void*) ;
 int git_column_config (char const*,char const*,char*,int *) ;
 int git_config_bool (char const*,char const*) ;
 int git_config_colorbool (char const*,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_clean_config(const char *var, const char *value, void *cb)
{
 const char *slot_name;

 if (starts_with(var, "column."))
  return git_column_config(var, value, "clean", &colopts);



 if (!strcmp(var, "color.interactive")) {
  clean_use_color = git_config_colorbool(var, value);
  return 0;
 }
 if (skip_prefix(var, "color.interactive.", &slot_name)) {
  int slot = LOOKUP_CONFIG(color_interactive_slots, slot_name);
  if (slot < 0)
   return 0;
  if (!value)
   return config_error_nonbool(var);
  return color_parse(value, clean_colors[slot]);
 }

 if (!strcmp(var, "clean.requireforce")) {
  force = !git_config_bool(var, value);
  return 0;
 }


 return git_color_default_config(var, value, cb);
}
