
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sigval {int sival_int; } ;
struct sigaction {int sa_sigaction; int sa_flags; int sa_mask; } ;
typedef int sigset_t ;


 int SA_SIGINFO ;
 int SIGRTMIN ;
 int SIG_BLOCK ;
 int getpid () ;
 int job_control_test () ;
 int rtsig_handler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ sigqueue (int ,int ,union sigval) ;

int
main()
{
 struct sigaction sa;
 sigset_t set;
 union sigval val;


 job_control_test();


 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_SIGINFO;
 sa.sa_sigaction = rtsig_handler;
 sigaction(SIGRTMIN, &sa, ((void*)0));
 sigemptyset(&set);
 sigaddset(&set, SIGRTMIN);
 sigprocmask(SIG_BLOCK, &set, ((void*)0));
 val.sival_int = 1;
 while (sigqueue(getpid(), SIGRTMIN, val))
  ;


 job_control_test();
 return (0);
}
