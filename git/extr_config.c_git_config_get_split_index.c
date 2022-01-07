
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_get_maybe_bool (char*,int*) ;

int git_config_get_split_index(void)
{
 int val;

 if (!git_config_get_maybe_bool("core.splitindex", &val))
  return val;

 return -1;
}
