
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;
typedef int pid_t ;


 int O_CREAT ;
 int * SEM_FAILED ;
 int SEM_NAME ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fork () ;
 int printf (char*) ;
 scalar_t__ sem_close (int *) ;
 int * sem_open (int ,int ,int,int ) ;
 scalar_t__ sem_post (int *) ;
 int sem_unlink (int ) ;
 scalar_t__ sem_wait (int *) ;
 int sleep (int) ;
 int waitpid (int ,int*,int ) ;

int
test_named(void)
{
 sem_t *s, *s2;
 pid_t pid;
 int status;

 printf("testing named process-shared semaphore\n");
 sem_unlink(SEM_NAME);
 s = sem_open(SEM_NAME, O_CREAT, 0777, 0);
 if (s == SEM_FAILED)
  err(1, "sem_open failed");
 s2 = sem_open(SEM_NAME, O_CREAT, 0777, 0);
 if (s2 == SEM_FAILED)
  err(2, "second sem_open call failed");
 if (s != s2)
  errx(3,
"two sem_open calls for same semaphore do not return same address");
 if (sem_close(s2))
  err(4, "sem_close failed");
 if ((pid = fork()) == 0) {
  printf("child: sem_wait()\n");
  if (sem_wait(s))
   err(5, "sem_wait failed");
  printf("child: sem_wait() returned\n");
  exit(0);
 } else {
  sleep(1);
  printf("parent: sem_post()\n");
  if (sem_post(s))
   err(6, "sem_post failed");
  waitpid(pid, &status, 0);
  if (WIFEXITED(status) && WEXITSTATUS(status) == 0)
   printf("OK.\n");
  else
   printf("Failure.");
 }

 if (sem_close(s))
  err(7, "sem_close failed");

 return (0);
}
