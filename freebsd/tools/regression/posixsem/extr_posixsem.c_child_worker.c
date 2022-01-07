
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int cstat ;


 int close (int) ;
 int exit (int ) ;
 int fail_errno (char*) ;
 int fork () ;
 scalar_t__ pipe (int*) ;
 scalar_t__ read (int,int*,int) ;
 scalar_t__ waitpid (int,int *,int ) ;
 int write (int,int*,int) ;

__attribute__((used)) static int
child_worker(int (*func)(void *arg), void *arg, int *stat)
{
 pid_t pid;
 int pfd[2], cstat;

 if (pipe(pfd) < 0) {
  fail_errno("pipe");
  return (-1);
 }

 pid = fork();
 switch (pid) {
 case -1:

  fail_errno("fork");
  close(pfd[0]);
  close(pfd[1]);
  return (-1);
 case 0:

  cstat = func(arg);
  write(pfd[1], &cstat, sizeof(cstat));
  exit(0);
 }

 if (read(pfd[0], stat, sizeof(*stat)) < 0) {
  fail_errno("read(pipe)");
  close(pfd[0]);
  close(pfd[1]);
  return (-1);
 }
 if (waitpid(pid, ((void*)0), 0) < 0) {
  fail_errno("wait");
  close(pfd[0]);
  close(pfd[1]);
  return (-1);
 }
 close(pfd[0]);
 close(pfd[1]);
 return (0);
}
