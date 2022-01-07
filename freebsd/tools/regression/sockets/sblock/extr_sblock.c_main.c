
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_handler; } ;
typedef scalar_t__ pid_t ;


 int PF_LOCAL ;
 int SA_RESTART ;
 int SIGHUP ;
 int SIGKILL ;
 scalar_t__ SIG_ERR ;
 int SOCK_STREAM ;
 int blocking_recver (int) ;
 int close (int) ;
 int err (int,char*) ;
 int errno ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 int locking_recver (int) ;
 int printf (char*) ;
 scalar_t__ sigaction (int ,struct sigaction*,struct sigaction*) ;
 scalar_t__ signal (int ,int ) ;
 int signal_handler ;
 int signaller (scalar_t__,int) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;

int
main(void)
{
 int error, fds[2], recver_fd, sender_fd;
 pid_t blocking_recver_pid;
 pid_t locking_recver_pid;
 struct sigaction sa;

 if (sigaction(SIGHUP, ((void*)0), &sa) < 0)
  err(-1, "FAIL: sigaction(SIGHUP, NULL, &sa)");

 sa.sa_handler = signal_handler;
 if (sa.sa_flags & SA_RESTART)
  printf("SIGHUP restartable by default (cleared)\n");
 sa.sa_flags &= ~SA_RESTART;

 if (sigaction(SIGHUP, &sa, ((void*)0)) < 0)
  err(-1, "FAIL: sigaction(SIGHUP, &sa, NULL)");






 if (socketpair(PF_LOCAL, SOCK_STREAM, 0, fds) < 0)
  err(-1, "FAIL: socketpair(PF_LOCAL, SOGK_STREAM, 0)");

 sender_fd = fds[0];
 recver_fd = fds[1];

 blocking_recver_pid = fork();
 if (blocking_recver_pid < 0)
  err(-1, "FAIL: fork");
 if (blocking_recver_pid == 0) {
  close(sender_fd);
  blocking_recver(recver_fd);
  exit(0);
 }

 locking_recver_pid = fork();
 if (locking_recver_pid < 0) {
  error = errno;
  kill(blocking_recver_pid, SIGKILL);
  errno = error;
  err(-1, "FAIL: fork");
 }
 if (locking_recver_pid == 0) {
  close(sender_fd);
  locking_recver(recver_fd);
  exit(0);
 }

 signaller(locking_recver_pid, sender_fd);

 kill(blocking_recver_pid, SIGKILL);
 kill(locking_recver_pid, SIGKILL);
 exit(0);
}
