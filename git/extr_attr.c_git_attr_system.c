
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_env_bool (char*,int ) ;

__attribute__((used)) static int git_attr_system(void)
{
 return !git_env_bool("GIT_ATTR_NOSYSTEM", 0);
}
