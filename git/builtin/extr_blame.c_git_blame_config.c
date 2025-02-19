
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OUTPUT_COLOR_LINE ;
 int OUTPUT_SHOW_AGE_WITH_COLOR ;
 int OUTPUT_SHOW_EMAIL ;
 int _ (char*) ;
 int blame_date_mode ;
 void* blank_boundary ;
 scalar_t__ color_parse_mem (char const*,int ,int ) ;
 int coloring_mode ;
 int config_error_nonbool (char const*) ;
 void* git_config_bool (char const*,char const*) ;
 int git_config_pathname (char const**,char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ git_diff_heuristic_config (char const*,char const*,void*) ;
 int ignore_revs_file_list ;
 void* mark_ignored_lines ;
 void* mark_unblamable_lines ;
 int parse_color_fields (char const*) ;
 int parse_date_format (char const*,int *) ;
 int repeated_meta_color ;
 void* show_root ;
 int strcmp (char const*,char*) ;
 int string_list_insert (int *,char const*) ;
 int strlen (char const*) ;
 scalar_t__ userdiff_config (char const*,char const*) ;
 int warning (int ,...) ;

__attribute__((used)) static int git_blame_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "blame.showroot")) {
  show_root = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "blame.blankboundary")) {
  blank_boundary = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "blame.showemail")) {
  int *output_option = cb;
  if (git_config_bool(var, value))
   *output_option |= OUTPUT_SHOW_EMAIL;
  else
   *output_option &= ~OUTPUT_SHOW_EMAIL;
  return 0;
 }
 if (!strcmp(var, "blame.date")) {
  if (!value)
   return config_error_nonbool(var);
  parse_date_format(value, &blame_date_mode);
  return 0;
 }
 if (!strcmp(var, "blame.ignorerevsfile")) {
  const char *str;
  int ret;

  ret = git_config_pathname(&str, var, value);
  if (ret)
   return ret;
  string_list_insert(&ignore_revs_file_list, str);
  return 0;
 }
 if (!strcmp(var, "blame.markunblamablelines")) {
  mark_unblamable_lines = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "blame.markignoredlines")) {
  mark_ignored_lines = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "color.blame.repeatedlines")) {
  if (color_parse_mem(value, strlen(value), repeated_meta_color))
   warning(_("invalid color '%s' in color.blame.repeatedLines"),
    value);
  return 0;
 }
 if (!strcmp(var, "color.blame.highlightrecent")) {
  parse_color_fields(value);
  return 0;
 }

 if (!strcmp(var, "blame.coloring")) {
  if (!strcmp(value, "repeatedLines")) {
   coloring_mode |= OUTPUT_COLOR_LINE;
  } else if (!strcmp(value, "highlightRecent")) {
   coloring_mode |= OUTPUT_SHOW_AGE_WITH_COLOR;
  } else if (!strcmp(value, "none")) {
   coloring_mode &= ~(OUTPUT_COLOR_LINE |
         OUTPUT_SHOW_AGE_WITH_COLOR);
  } else {
   warning(_("invalid value for blame.coloring"));
   return 0;
  }
 }

 if (git_diff_heuristic_config(var, value, cb) < 0)
  return -1;
 if (userdiff_config(var, value) < 0)
  return -1;

 return git_default_config(var, value, cb);
}
