
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_man_viewer (char const*) ;
 int add_man_viewer_info (char const*,char const*) ;
 int colopts ;
 int config_error_nonbool (char const*) ;
 int git_column_config (char const*,char const*,char*,int *) ;
 int git_default_config (char const*,char const*,void*) ;
 int help_format ;
 int html_path ;
 int parse_help_format (char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int git_help_config(const char *var, const char *value, void *cb)
{
 if (starts_with(var, "column."))
  return git_column_config(var, value, "help", &colopts);
 if (!strcmp(var, "help.format")) {
  if (!value)
   return config_error_nonbool(var);
  help_format = parse_help_format(value);
  return 0;
 }
 if (!strcmp(var, "help.htmlpath")) {
  if (!value)
   return config_error_nonbool(var);
  html_path = xstrdup(value);
  return 0;
 }
 if (!strcmp(var, "man.viewer")) {
  if (!value)
   return config_error_nonbool(var);
  add_man_viewer(value);
  return 0;
 }
 if (starts_with(var, "man."))
  return add_man_viewer_info(var, value);

 return git_default_config(var, value, cb);
}
