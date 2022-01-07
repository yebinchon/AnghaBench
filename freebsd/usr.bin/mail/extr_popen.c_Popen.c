
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef scalar_t__ pid_t ;
typedef int FILE ;


 int F_SETFD ;
 size_t READ ;
 size_t WRITE ;
 int close (int) ;
 int fcntl (int,int ,int) ;
 int * fdopen (int,char const*) ;
 scalar_t__ pipe (int*) ;
 int register_file (int *,int,scalar_t__) ;
 int sigemptyset (int *) ;
 scalar_t__ start_command (int ,int *,int,int,char*,char*,int *) ;
 int value (char*) ;

FILE *
Popen(char *cmd, const char *mode)
{
 int p[2];
 int myside, hisside, fd0, fd1;
 pid_t pid;
 sigset_t nset;
 FILE *fp;

 if (pipe(p) < 0)
  return (((void*)0));
 (void)fcntl(p[READ], F_SETFD, 1);
 (void)fcntl(p[WRITE], F_SETFD, 1);
 if (*mode == 'r') {
  myside = p[READ];
  hisside = fd0 = fd1 = p[WRITE];
 } else {
  myside = p[WRITE];
  hisside = fd0 = p[READ];
  fd1 = -1;
 }
 (void)sigemptyset(&nset);
 pid = start_command(value("SHELL"), &nset, fd0, fd1, "-c", cmd, ((void*)0));
 if (pid < 0) {
  (void)close(p[READ]);
  (void)close(p[WRITE]);
  return (((void*)0));
 }
 (void)close(hisside);
 if ((fp = fdopen(myside, mode)) != ((void*)0))
  register_file(fp, 1, pid);
 return (fp);
}
