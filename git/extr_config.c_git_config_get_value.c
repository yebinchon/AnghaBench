
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repo_config_get_value (int ,char const*,char const**) ;
 int the_repository ;

int git_config_get_value(const char *key, const char **value)
{
 return repo_config_get_value(the_repository, key, value);
}
