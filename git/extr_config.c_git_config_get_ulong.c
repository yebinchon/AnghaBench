
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repo_config_get_ulong (int ,char const*,unsigned long*) ;
 int the_repository ;

int git_config_get_ulong(const char *key, unsigned long *dest)
{
 return repo_config_get_ulong(the_repository, key, dest);
}
