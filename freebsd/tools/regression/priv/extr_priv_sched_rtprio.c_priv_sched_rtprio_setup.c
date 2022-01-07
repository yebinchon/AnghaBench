
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {scalar_t__ t_test_func; } ;


 int UID_THIRD ;
 scalar_t__ childproc ;
 int childproc_running ;
 int err (int,char*,int ) ;
 scalar_t__ fork () ;
 scalar_t__ priv_sched_rtprio_aproc_idle ;
 scalar_t__ priv_sched_rtprio_aproc_normal ;
 scalar_t__ priv_sched_rtprio_aproc_realtime ;
 scalar_t__ priv_sched_rtprio_myproc_idle ;
 scalar_t__ priv_sched_rtprio_myproc_normal ;
 scalar_t__ priv_sched_rtprio_myproc_realtime ;
 scalar_t__ setresuid (int ,int ,int ) ;
 int sleep (int) ;
 int warn (char*) ;

int
priv_sched_rtprio_setup(int asroot, int injail, struct test *test)
{
 int another_uid, need_child;





 need_child = 0;
 if (test->t_test_func == priv_sched_rtprio_aproc_normal ||
     test->t_test_func == priv_sched_rtprio_aproc_idle ||
     test->t_test_func == priv_sched_rtprio_aproc_realtime) {
  need_child = 1;
  another_uid = 1;
 }
 if (test->t_test_func == priv_sched_rtprio_myproc_normal ||
     test->t_test_func == priv_sched_rtprio_myproc_idle ||
     test->t_test_func == priv_sched_rtprio_myproc_realtime) {
  need_child = 1;
 }

 if (need_child) {
  childproc = fork();
  if (childproc < 0) {
   warn("priv_sched_setup: fork");
   return (-1);
  }
  if (childproc == 0) {
   if (another_uid) {
    if (setresuid(UID_THIRD, UID_THIRD,
        UID_THIRD) < 0)
    err(-1, "setresuid(%d)", UID_THIRD);
   }
   while (1)
    sleep(1);
  }
  childproc_running = 1;
  sleep(1);
 }
 return (0);
}
