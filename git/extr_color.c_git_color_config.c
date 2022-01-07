
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_colorbool (char const*,char const*) ;
 int git_use_color_default ;
 int strcmp (char const*,char*) ;

int git_color_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "color.ui")) {
  git_use_color_default = git_config_colorbool(var, value);
  return 0;
 }

 return 0;
}
