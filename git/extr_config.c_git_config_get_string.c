
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repo_config_get_string (int ,char const*,char**) ;
 int the_repository ;

int git_config_get_string(const char *key, char **dest)
{
 return repo_config_get_string(the_repository, key, dest);
}
