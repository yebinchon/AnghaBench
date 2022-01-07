
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_env_bool (char*,int ) ;

int git_config_system(void)
{
 return !git_env_bool("GIT_CONFIG_NOSYSTEM", 0);
}
