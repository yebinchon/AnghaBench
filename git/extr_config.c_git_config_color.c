
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ color_parse (char const*,char*) ;
 int config_error_nonbool (char const*) ;

int git_config_color(char *dest, const char *var, const char *value)
{
 if (!value)
  return config_error_nonbool(var);
 if (color_parse(value, dest) < 0)
  return -1;
 return 0;
}
