
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ audit_dtrace_enabled ;
 int audit_mtx ;
 int audit_syscalls_enabled ;
 scalar_t__ audit_trail_enabled ;
 int audit_trail_suspended ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
audit_syscalls_enabled_update(void)
{

 mtx_lock(&audit_mtx);





  if (audit_trail_enabled && !audit_trail_suspended)
   audit_syscalls_enabled = 1;
  else
   audit_syscalls_enabled = 0;



 mtx_unlock(&audit_mtx);
}
