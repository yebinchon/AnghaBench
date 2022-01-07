
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dtaudit_hook_bsm ;
 int * dtaudit_hook_commit ;
 int * dtaudit_hook_preselect ;
 int dtaudit_id ;
 int dtrace_unregister (int ) ;

__attribute__((used)) static int
dtaudit_unload(void)
{
 int error;

 dtaudit_hook_preselect = ((void*)0);
 dtaudit_hook_commit = ((void*)0);
 dtaudit_hook_bsm = ((void*)0);
 if ((error = dtrace_unregister(dtaudit_id)) != 0)
  return (error);
 return (0);
}
