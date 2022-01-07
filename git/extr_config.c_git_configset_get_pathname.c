
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_set {int dummy; } ;


 int git_config_pathname (char const**,char const*,char const*) ;
 int git_configset_get_value (struct config_set*,char const*,char const**) ;

int git_configset_get_pathname(struct config_set *cs, const char *key, const char **dest)
{
 const char *value;
 if (!git_configset_get_value(cs, key, &value))
  return git_config_pathname(dest, key, value);
 else
  return 1;
}
