
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIT_WORKER_LOCK_INIT () ;
 int RFHIGHPID ;
 int audit_thread ;
 int audit_worker ;
 int kproc_create (int ,int *,int *,int ,int ,char*) ;
 int panic (char*,int) ;

void
audit_worker_init(void)
{
 int error;

 AUDIT_WORKER_LOCK_INIT();
 error = kproc_create(audit_worker, ((void*)0), &audit_thread, RFHIGHPID,
     0, "audit");
 if (error)
  panic("audit_worker_init: kproc_create returned %d", error);
}
