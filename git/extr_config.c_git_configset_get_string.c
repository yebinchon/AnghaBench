
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_set {int dummy; } ;


 int git_configset_get_string_const (struct config_set*,char const*,char const**) ;

int git_configset_get_string(struct config_set *cs, const char *key, char **dest)
{
 return git_configset_get_string_const(cs, key, (const char **)dest);
}
