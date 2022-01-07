
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repo_config_get_int (int ,char const*,int*) ;
 int the_repository ;

int git_config_get_int(const char *key, int *dest)
{
 return repo_config_get_int(the_repository, key, dest);
}
