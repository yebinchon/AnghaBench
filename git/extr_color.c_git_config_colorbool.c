
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_COLOR_AUTO ;
 int git_config_bool (char const*,char const*) ;
 int strcasecmp (char const*,char*) ;

int git_config_colorbool(const char *var, const char *value)
{
 if (value) {
  if (!strcasecmp(value, "never"))
   return 0;
  if (!strcasecmp(value, "always"))
   return 1;
  if (!strcasecmp(value, "auto"))
   return GIT_COLOR_AUTO;
 }

 if (!var)
  return -1;


 if (!git_config_bool(var, value))
  return 0;


 return GIT_COLOR_AUTO;
}
