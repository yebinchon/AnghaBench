
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_set_multivar_gently (char const*,char const*,int *,int ) ;

int git_config_set_gently(const char *key, const char *value)
{
 return git_config_set_multivar_gently(key, value, ((void*)0), 0);
}
