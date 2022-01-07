
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;
typedef int fd_set ;


 int BATT_CHK_INTV ;
 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int SA_RESTART ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGTERM ;
 int SIG_SETMASK ;
 int apmctl_fd ;
 int check_battery () ;
 int enque_signal ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int memcpy (int *,int *,int) ;
 int memset (struct sigaction*,int ,int) ;
 int proc_apmevent (int) ;
 scalar_t__ proc_signal (int) ;
 int select (int,int *,int ,int ,struct timeval*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;
 int* signal_fd ;
 int sigprocmask (int ,int *,int *) ;

void
event_loop(void)
{
 int fdmax = 0;
 struct sigaction nsa;
 fd_set master_rfds;
 sigset_t sigmask, osigmask;

 FD_ZERO(&master_rfds);
 FD_SET(apmctl_fd, &master_rfds);
 fdmax = apmctl_fd > fdmax ? apmctl_fd : fdmax;

 FD_SET(signal_fd[0], &master_rfds);
 fdmax = signal_fd[0] > fdmax ? signal_fd[0] : fdmax;

 memset(&nsa, 0, sizeof nsa);
 nsa.sa_handler = enque_signal;
 sigfillset(&nsa.sa_mask);
 nsa.sa_flags = SA_RESTART;
 sigaction(SIGHUP, &nsa, ((void*)0));
 sigaction(SIGCHLD, &nsa, ((void*)0));
 sigaction(SIGTERM, &nsa, ((void*)0));

 sigemptyset(&sigmask);
 sigaddset(&sigmask, SIGHUP);
 sigaddset(&sigmask, SIGCHLD);
 sigaddset(&sigmask, SIGTERM);
 sigprocmask(SIG_SETMASK, &sigmask, &osigmask);

 while (1) {
  fd_set rfds;
  int res;
  struct timeval to;

  to.tv_sec = BATT_CHK_INTV;
  to.tv_usec = 0;

  memcpy(&rfds, &master_rfds, sizeof rfds);
  sigprocmask(SIG_SETMASK, &osigmask, ((void*)0));
  if ((res=select(fdmax + 1, &rfds, 0, 0, &to)) < 0) {
   if (errno != EINTR)
    err(1, "select");
  }
  sigprocmask(SIG_SETMASK, &sigmask, ((void*)0));

  if (res == 0) {
   check_battery();
   continue;
  }

  if (FD_ISSET(signal_fd[0], &rfds)) {
   if (proc_signal(signal_fd[0]) < 0)
    return;
  }

  if (FD_ISSET(apmctl_fd, &rfds))
   proc_apmevent(apmctl_fd);
 }
}
