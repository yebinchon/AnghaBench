
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repo_config_get_string_const (int ,char const*,char const**) ;
 int the_repository ;

int git_config_get_string_const(const char *key, const char **dest)
{
 return repo_config_get_string_const(the_repository, key, dest);
}
