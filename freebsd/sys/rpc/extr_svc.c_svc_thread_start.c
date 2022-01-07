
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVCGROUP ;


 int FALSE ;
 int kthread_exit () ;
 int svc_run_internal (int *,int ) ;

__attribute__((used)) static void
svc_thread_start(void *arg)
{

 svc_run_internal((SVCGROUP *) arg, FALSE);
 kthread_exit();
}
