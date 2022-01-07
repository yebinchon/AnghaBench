
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ET_EXITING ;
 int epoch_testcase1 (void*) ;
 int epoch_testcase2 (void*) ;
 int kthread_exit () ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pause (char*,int) ;
 int state_flags ;
 int state_mtx ;

__attribute__((used)) static void
testloop(void *arg) {

 mtx_lock(&state_mtx);
 while ((state_flags & ET_EXITING) == 0) {
  msleep(&state_mtx, &state_mtx, 0, "epoch start wait", 0);
  if (state_flags & ET_EXITING)
   goto out;
  mtx_unlock(&state_mtx);
  epoch_testcase2(arg);
  pause("W", 500);
  epoch_testcase1(arg);
  mtx_lock(&state_mtx);
 }
 out:
 mtx_unlock(&state_mtx);
 kthread_exit();
}
