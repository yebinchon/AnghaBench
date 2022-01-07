
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;
typedef int pid_t ;


 int MAP_ANON ;
 int * MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int err (int,char*) ;
 int exit (int ) ;
 int fork () ;
 scalar_t__ mmap (int *,int,int,int,int,int ) ;
 int printf (char*) ;
 scalar_t__ sem_init (int *,int,int ) ;
 scalar_t__ sem_post (int *) ;
 scalar_t__ sem_wait (int *) ;
 int sleep (int) ;
 int waitpid (int ,int*,int ) ;

int
test_unnamed(void)
{
 sem_t *s;
 pid_t pid;
 int status;

 printf("testing unnamed process-shared semaphore\n");
 s = (sem_t *)mmap(((void*)0), sizeof(sem_t), PROT_READ|PROT_WRITE, MAP_ANON|MAP_SHARED,
  -1, 0);
 if (s == MAP_FAILED)
  err(1, "mmap failed");
 if (sem_init(s, 1, 0))
  err(2, "sem_init failed");
 if ((pid = fork()) == 0) {
  printf("child: sem_wait()\n");
  if (sem_wait(s))
   err(3, "sem_wait failed");
  printf("child: sem_wait() returned\n");
  exit(0);
 } else {
  sleep(1);
  printf("parent: sem_post()\n");
  if (sem_post(s))
   err(4, "sem_post failed");
  waitpid(pid, &status, 0);
  if (WIFEXITED(status) && WEXITSTATUS(status) == 0)
   printf("OK.\n");
  else
   printf("Failure.");
 }
 return (0);
}
