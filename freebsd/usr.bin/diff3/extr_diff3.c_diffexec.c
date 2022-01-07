
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PD_CLOEXEC ;
 int STDOUT_FILENO ;
 int close (int) ;
 int dup2 (int,int ) ;
 int err (int,char*,...) ;
 int execvp (char const*,char**) ;
 int pdfork (int*,int ) ;

__attribute__((used)) static int
diffexec(const char *diffprog, char **diffargv, int fd[])
{
 int pid, pd;

 switch (pid = pdfork(&pd, PD_CLOEXEC)) {
 case 0:
  close(fd[0]);
  if (dup2(fd[1], STDOUT_FILENO) == -1)
   err(2, "child could not duplicate descriptor");
  close(fd[1]);
  execvp(diffprog, diffargv);
  err(2, "could not execute diff: %s", diffprog);
  break;
 case -1:
  err(2, "could not fork");
  break;
 }
 close(fd[1]);
 return (pd);
}
