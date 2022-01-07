
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 int EINVAL ;
 int close (int) ;
 int dup (int) ;
 int environ ;
 int errno ;
 int execve (char*,char**,int ) ;
 int exit (int) ;
 int * fdopen (int,char*) ;
 int fork () ;
 scalar_t__ pipe (int*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static FILE *
my_popen(const char *command, const char *dir, pid_t *p_pid)
{
 FILE *io_out, *io_in;
 int pdesin[2], pdesout[2];
 char *argv[4];
 pid_t pid;
 char cmd[4];
 char cmd2[1024];
 char arg1[4];

 if ((strcmp(dir, "r") != 0) &&
     (strcmp(dir, "w") != 0)) {
  errno = EINVAL;
  return(((void*)0));
 }
 if (pipe(pdesin) < 0)
  return (((void*)0));

 if (pipe(pdesout) < 0) {
  (void)close(pdesin[0]);
  (void)close(pdesin[1]);
  return (((void*)0));
 }
 strcpy(cmd, "sh");
 strcpy(arg1, "-c");
 strcpy(cmd2, command);
 argv[0] = cmd;
 argv[1] = arg1;
 argv[2] = cmd2;
 argv[3] = ((void*)0);

 switch (pid = fork()) {
 case -1:
  (void)close(pdesin[0]);
  (void)close(pdesin[1]);
  (void)close(pdesout[0]);
  (void)close(pdesout[1]);
  return (((void*)0));

 case 0:

  (void)close(pdesin[1]);
  (void)close(pdesout[0]);

  close(0);
  (void)dup(pdesin[0]);
  (void)close(pdesin[0]);

  close(1);
  (void)dup(pdesout[1]);

  close(2);
  (void)dup(pdesout[1]);
  (void)close(pdesout[1]);

  execve("/bin/sh", argv, environ);
  exit(127);

 }


 *p_pid = pid;
 if (strcmp(dir, "r") != 0) {
  io_out = fdopen(pdesin[1], "w");
  (void)close(pdesin[0]);
  (void)close(pdesout[0]);
  (void)close(pdesout[1]);
  return(io_out);
  } else {

  io_in = fdopen(pdesout[0], "r");
  (void)close(pdesout[1]);
  (void)close(pdesin[0]);
  (void)close(pdesin[1]);
  return (io_in);
 }
}
