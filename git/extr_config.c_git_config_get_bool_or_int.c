
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repo_config_get_bool_or_int (int ,char const*,int*,int*) ;
 int the_repository ;

int git_config_get_bool_or_int(const char *key, int *is_bool, int *dest)
{
 return repo_config_get_bool_or_int(the_repository, key, is_bool, dest);
}
