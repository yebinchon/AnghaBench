
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union semun {struct semid_ds* buf; } ;
struct semid_ds {int dummy; } ;


 int IPC_STAT ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ child_count ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int print_semid_ds (struct semid_ds*,int) ;
 int semctl (int ,int ,int ,union semun) ;
 int sender_semid ;
 int signal_was_sigchld ;
 int wait (int*) ;

void
sigchld_handler(int signo)
{
 union semun sun;
 struct semid_ds s_ds;
 int cstatus;





 if (wait(&cstatus) == -1)
  err(1, "wait");

 if (WIFEXITED(cstatus) == 0)
  errx(1, "receiver exited abnormally");

 if (WEXITSTATUS(cstatus) != 0)
  errx(1, "receiver exited with status %d",
      WEXITSTATUS(cstatus));







 sun.buf = &s_ds;
 if (semctl(sender_semid, 0, IPC_STAT, sun) == -1)
  err(1, "semctl IPC_STAT");

 print_semid_ds(&s_ds, 0600);

 if (--child_count != 0) {
  signal_was_sigchld = 1;
  return;
 }

 exit(0);
}
