
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int PF_LOCAL ;
 int SIGKILL ;
 int SOCK_STREAM ;
 int err (int,char*) ;
 int exit (int) ;
 scalar_t__ fork () ;
 scalar_t__ kill (scalar_t__,int ) ;
 int printf (char*) ;
 int receive_and_exit (int) ;
 int shutdown_and_exit (int) ;
 int sleep (int) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int warn (char*) ;

int
main(void)
{
 pid_t pida, pidb;
 int sv[2];

 if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sv) < 0)
  err(-1, "socketpair");

 pida = fork();
 if (pida < 0)
  err(-1, "fork");
 if (pida == 0)
  receive_and_exit(sv[1]);
 sleep(1);
 pidb = fork();
 if (pidb < 0) {
  warn("fork");
  (void)kill(pida, SIGKILL);
  exit(-1);
 }
 if (pidb == 0)
  shutdown_and_exit(sv[1]);
 sleep(1);
 if (kill(pidb, SIGKILL) < 0)
  err(-1, "kill");
 sleep(1);
 printf("ok 1 - unix_sorflush\n");
 exit(0);
}
