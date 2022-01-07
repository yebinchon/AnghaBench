
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUIT ;
 int global_condvar ;
 int kthread_exit () ;
 int kthread_suspend_check () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int test_global_lock ;
 int test_thrcnt ;
 int wakeup (int *) ;

__attribute__((used)) static void
thr_getsuspended(void *arg)
{
 for (;;) {
  if (QUIT == 1)
   break;
  kthread_suspend_check();
 }

 mtx_lock(&test_global_lock);
 test_thrcnt--;
 wakeup(&global_condvar);
 mtx_unlock(&test_global_lock);

 kthread_exit();
}
