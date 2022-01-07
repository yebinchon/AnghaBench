
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int EWOULDBLOCK ;
 int QUIT ;
 int global_condvar ;
 int hz ;
 int kthread_exit () ;
 int kthread_suspend (struct thread*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,...) ;
 int test_global_lock ;
 int test_thrcnt ;
 int wakeup (int *) ;

__attribute__((used)) static void
thr_suspender(void *arg)
{
 struct thread *td = (struct thread *) arg;
 int error;

 for (;;) {
  if (QUIT == 1)
   break;
  error = kthread_suspend(td, 10*hz);
  if (error != 0 && QUIT == 0) {
   if (error == EWOULDBLOCK)
    panic("Ooops: kthread deadlock\n");
   else
    panic("kthread_suspend error: %d\n", error);
   break;
  }
 }

 mtx_lock(&test_global_lock);
 test_thrcnt--;
 wakeup(&global_condvar);
 mtx_unlock(&test_global_lock);

 kthread_exit();
}
