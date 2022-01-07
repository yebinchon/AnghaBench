
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int close (int) ;
 int dup2 (int,int ) ;
 int environ ;
 int execve (char*,char**,int ) ;
 int exit (int) ;
 int * fdopen (int,char*) ;
 scalar_t__ pipe (int*) ;
 int vfork () ;

__attribute__((used)) static void
cmd_popen(char *command, FILE **iop)
{
 char *argv[4];
 int pdes[4];
 int pid;

 if (pipe(pdes) < 0)
  goto error;

 if (pipe(pdes + 2) < 0) {
  close(pdes[0]);
  close(pdes[1]);
  goto error;
 }
 argv[0] = "sh";
 argv[1] = "-c";
 argv[2] = command;
 argv[3] = ((void*)0);

 switch ((pid = vfork())) {
 case -1:
  close(pdes[0]);
  close(pdes[1]);
  close(pdes[2]);
  close(pdes[3]);
  goto error;
 case 0:
  dup2(pdes[1], STDOUT_FILENO);
  dup2(pdes[2], STDIN_FILENO);
  close(pdes[0]);
  close(pdes[3]);
  execve("/bin/sh", argv, environ);
  exit(127);
 default:
  break;
 }
 iop[0] = fdopen(pdes[3], "w");
 iop[1] = fdopen(pdes[0], "r");
 close(pdes[1]);
 close(pdes[2]);
 return;
error:
 iop[0] = iop[1] = ((void*)0);
}
