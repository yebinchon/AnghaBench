
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
typedef int pid_t ;


 int SIGKILL ;
 int childproc ;
 scalar_t__ childproc_running ;
 int kill (int,int ) ;
 int waitpid (int,int *,int ) ;
 int warn (char*,int) ;

void
priv_sched_rtprio_cleanup(int asroot, int injail, struct test *test)
{
 pid_t pid;

 if (childproc_running) {
  (void)kill(childproc, SIGKILL);
  while (1) {
   pid = waitpid(childproc, ((void*)0), 0);
   if (pid == -1)
    warn("waitpid(%d (test), NULL, 0)",
        childproc);
   if (pid == childproc)
    break;
  }
  childproc_running = 0;
  childproc = -1;
 }
}
