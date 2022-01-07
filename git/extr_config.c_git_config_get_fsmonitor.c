
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * core_fsmonitor ;
 int * getenv (char*) ;
 scalar_t__ git_config_get_pathname (char*,int **) ;

int git_config_get_fsmonitor(void)
{
 if (git_config_get_pathname("core.fsmonitor", &core_fsmonitor))
  core_fsmonitor = getenv("GIT_TEST_FSMONITOR");

 if (core_fsmonitor && !*core_fsmonitor)
  core_fsmonitor = ((void*)0);

 if (core_fsmonitor)
  return 1;

 return 0;
}
