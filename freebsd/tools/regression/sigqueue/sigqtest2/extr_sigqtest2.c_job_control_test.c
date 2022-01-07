
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_sigaction; int sa_flags; int sa_mask; } ;
typedef scalar_t__ pid_t ;


 int SA_SIGINFO ;
 int SIGCHLD ;
 int SIGSTOP ;
 scalar_t__ cont_received ;
 int errx (int,char*) ;
 int exit (int) ;
 scalar_t__ exit_received ;
 int fflush (int ) ;
 scalar_t__ fork () ;
 int getpid () ;
 int job_handler ;
 int kill (int,int ) ;
 int printf (char*,...) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sleep (int) ;
 int stdout ;
 scalar_t__ stop_received ;

void
job_control_test(void)
{
 struct sigaction sa;
 pid_t pid;
 int count = 10;

 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_SIGINFO;
 sa.sa_sigaction = job_handler;
 sigaction(SIGCHLD, &sa, ((void*)0));
 stop_received = 0;
 cont_received = 0;
 exit_received = 0;
 fflush(stdout);
 pid = fork();
 if (pid == 0) {
  printf("child %d\n", getpid());
  kill(getpid(), SIGSTOP);
  sleep(2);
  exit(1);
 }

 while (!(cont_received && stop_received && exit_received)) {
  sleep(1);
  if (--count == 0)
   break;
 }
 if (!(cont_received && stop_received && exit_received))
  errx(1, "job signals lost");

 printf("job control test OK.\n");
}
