
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sigval {int sival_int; } ;
struct sigaction {int sa_sigaction; int sa_mask; int sa_flags; } ;
typedef int sigset_t ;


 scalar_t__ EAGAIN ;
 int SA_SIGINFO ;
 int SIGRTMIN ;
 int SIG_BLOCK ;
 int SIG_UNBLOCK ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int getpid () ;
 int handler ;
 int printf (char*) ;
 int received ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sigqueue (int ,int ,union sigval) ;

int
main()
{
 struct sigaction sa;
 union sigval val;
 int ret;
 int i;
 sigset_t set;

 sa.sa_flags = SA_SIGINFO;
 sigemptyset(&sa.sa_mask);
 sa.sa_sigaction = handler;
 sigaction(SIGRTMIN, &sa, ((void*)0));
 sigemptyset(&set);
 sigaddset(&set, SIGRTMIN);
 sigprocmask(SIG_BLOCK, &set, ((void*)0));
 i = 0;
 for (;;) {
  val.sival_int = i;
  ret = sigqueue(getpid(), SIGRTMIN, val);
  if (ret == -1) {
   if (errno != EAGAIN) {
    errx(1, "errno != EAGAIN");
   }
   break;
  }
  i++;
 }
 sigprocmask(SIG_UNBLOCK, &set, ((void*)0));
 if (received != i)
  errx(1, "error, signal lost");
 printf("OK\n");
}
