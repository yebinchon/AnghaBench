
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_code; int si_pid; } ;
typedef TYPE_1__ siginfo_t ;


 scalar_t__ CLD_CONTINUED ;
 scalar_t__ CLD_EXITED ;
 scalar_t__ CLD_STOPPED ;
 int SIGCONT ;
 int WIFEXITED (int) ;
 int cont_received ;
 int errx (int,char*) ;
 int exit_received ;
 int kill (int,int ) ;
 int printf (char*,int) ;
 int stop_received ;
 int waitpid (int,int*,int ) ;

void
job_handler(int sig, siginfo_t *si, void *ctx)
{
 int status;
 int ret;

 if (si->si_code == CLD_STOPPED) {
  printf("%d: stop received\n", si->si_pid);
  stop_received = 1;
  kill(si->si_pid, SIGCONT);
 } else if (si->si_code == CLD_EXITED) {
  printf("%d: exit received\n", si->si_pid);
  ret = waitpid(si->si_pid, &status, 0);
  if (ret == -1)
   errx(1, "waitpid");
  if (!WIFEXITED(status))
   errx(1, "!WIFEXITED(status)");
  exit_received = 1;
 } else if (si->si_code == CLD_CONTINUED) {
  printf("%d: cont received\n", si->si_pid);
  cont_received = 1;
 }
}
