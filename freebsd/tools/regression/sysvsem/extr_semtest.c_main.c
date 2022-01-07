
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union semun {int val; struct semid_ds* buf; } ;
struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
struct TYPE_2__ {int mode; } ;
struct semid_ds {TYPE_1__ sem_perm; } ;
typedef int sigset_t ;
typedef int s_ds ;


 scalar_t__ EEXIST ;
 int GETNCNT ;
 int IPC_CREAT ;
 int IPC_EXCL ;
 int IPC_SET ;
 int IPC_STAT ;
 int SETVAL ;
 int SIGCHLD ;
 int SIGSYS ;
 int atexit (int ) ;
 int child_count ;
 int child_pid ;
 int cleanup ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int fork () ;
 int ftok (char*,int) ;
 int getpid () ;
 int memset (struct semid_ds*,int ,int) ;
 int print_semid_ds (struct semid_ds*,int) ;
 int semctl (int,int ,int ,...) ;
 int semget (int ,int,int) ;
 int semkey ;
 int sender_semid ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigchld_handler ;
 int sigemptyset (int *) ;
 scalar_t__ signal_was_sigchld ;
 int sigsuspend (int *) ;
 int sigsys_handler ;
 int usage () ;
 int waiter () ;

int
main(int argc, char *argv[])
{
 struct sigaction sa;
 union semun sun;
 struct semid_ds s_ds;
 sigset_t sigmask;
 int i;

 if (argc != 2)
  usage();





 sa.sa_handler = sigsys_handler;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 if (sigaction(SIGSYS, &sa, ((void*)0)) == -1)
  err(1, "sigaction SIGSYS");





 sa.sa_handler = sigchld_handler;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 if (sigaction(SIGCHLD, &sa, ((void*)0)) == -1)
  err(1, "sigaction SIGCHLD");

 semkey = ftok(argv[1], 4160);





 child_pid = getpid();





 if (atexit(cleanup) == -1)
  err(1, "atexit");

 if ((sender_semid = semget(semkey, 1, IPC_CREAT | 0640)) == -1)
  err(1, "semget");


 sun.buf = &s_ds;
 if (semctl(sender_semid, 0, IPC_STAT, sun) == -1)
  err(1, "semctl IPC_STAT");

 print_semid_ds(&s_ds, 0640);

 s_ds.sem_perm.mode = (s_ds.sem_perm.mode & ~0777) | 0600;

 sun.buf = &s_ds;
 if (semctl(sender_semid, 0, IPC_SET, sun) == -1)
  err(1, "semctl IPC_SET");

 memset(&s_ds, 0, sizeof(s_ds));

 sun.buf = &s_ds;
 if (semctl(sender_semid, 0, IPC_STAT, sun) == -1)
  err(1, "semctl IPC_STAT");

 if ((s_ds.sem_perm.mode & 0777) != 0600)
  err(1, "IPC_SET of mode didn't hold");

 print_semid_ds(&s_ds, 0600);

 errno = 0;
 if (semget(semkey, 1, IPC_CREAT | IPC_EXCL | 0600) != -1 ||
     errno != EEXIST)
  err(1, "semget IPC_EXCL 1 did not fail with [EEXIST]");
 errno = 0;
 if (semget(semkey, 2, IPC_CREAT | IPC_EXCL | 0600) != -1 ||
     errno != EEXIST)
  err(1, "semget IPC_EXCL 2 did not fail with [EEXIST]");

 for (child_count = 0; child_count < 5; child_count++) {
  switch ((child_pid = fork())) {
  case -1:
   err(1, "fork");


  case 0:
   waiter();
   break;

  default:
   break;
  }
 }





 for (;;) {
  i = semctl(sender_semid, 0, GETNCNT);
  if (i == -1)
   err(1, "semctl GETNCNT");
  if (i == 5)
   break;
 }





 sun.val = 1;
 if (semctl(sender_semid, 0, SETVAL, sun) == -1)
  err(1, "sender: semctl SETVAL to 1");




 sigemptyset(&sigmask);
 for (;;) {
  (void) sigsuspend(&sigmask);
  if (signal_was_sigchld)
   signal_was_sigchld = 0;
  else
   break;
 }




 errx(1, "sender: received unexpected signal");
}
