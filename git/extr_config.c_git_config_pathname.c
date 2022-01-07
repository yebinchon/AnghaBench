
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int config_error_nonbool (char const*) ;
 int die (int ,char const*) ;
 char* expand_user_path (char const*,int ) ;

int git_config_pathname(const char **dest, const char *var, const char *value)
{
 if (!value)
  return config_error_nonbool(var);
 *dest = expand_user_path(value, 0);
 if (!*dest)
  die(_("failed to expand user dir in: '%s'"), value);
 return 0;
}
