
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_PRIV_USER ;
 int dtaudit_attr ;
 int dtaudit_bsm ;
 int dtaudit_commit ;
 int dtaudit_hook_bsm ;
 int dtaudit_hook_commit ;
 int dtaudit_hook_preselect ;
 int dtaudit_id ;
 int dtaudit_pops ;
 int dtaudit_preselect ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void
dtaudit_load(void *dummy)
{

 if (dtrace_register("audit", &dtaudit_attr, DTRACE_PRIV_USER, ((void*)0),
     &dtaudit_pops, ((void*)0), &dtaudit_id) != 0)
  return;
 dtaudit_hook_preselect = dtaudit_preselect;
 dtaudit_hook_commit = dtaudit_commit;
 dtaudit_hook_bsm = dtaudit_bsm;
}
