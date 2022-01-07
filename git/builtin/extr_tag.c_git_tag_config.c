
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {int dummy; } ;


 int colopts ;
 int config_error_nonbool (char const*) ;
 void* config_sign_tag ;
 void* force_sign_annotate ;
 int git_color_default_config (char const*,char const*,void*) ;
 int git_column_config (char const*,char const*,char*,int *) ;
 void* git_config_bool (char const*,char const*) ;
 int git_gpg_config (char const*,char const*,void*) ;
 int parse_ref_sorting (struct ref_sorting**,char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_tag_config(const char *var, const char *value, void *cb)
{
 int status;
 struct ref_sorting **sorting_tail = (struct ref_sorting **)cb;

 if (!strcmp(var, "tag.gpgsign")) {
  config_sign_tag = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "tag.sort")) {
  if (!value)
   return config_error_nonbool(var);
  parse_ref_sorting(sorting_tail, value);
  return 0;
 }

 status = git_gpg_config(var, value, cb);
 if (status)
  return status;
 if (!strcmp(var, "tag.forcesignannotated")) {
  force_sign_annotate = git_config_bool(var, value);
  return 0;
 }

 if (starts_with(var, "column."))
  return git_column_config(var, value, "tag", &colopts);
 return git_color_default_config(var, value, cb);
}
