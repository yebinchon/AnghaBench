
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int O_RDWR ;
 int SIGALRM ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int WCOREDUMP (int) ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int _PATH_DEVNULL ;
 int alarm (int) ;
 int chdir (char*) ;
 int close (int) ;
 int dup2 (int,int) ;
 int errx (int,char*,int,int ,...) ;
 int exit (int ) ;
 int fork () ;
 int getppid () ;
 int open (int ,int ,int ) ;
 int setsid () ;
 int signal (int ,int ) ;
 int timedout ;
 int wait3 (int*,int ,int *) ;

__attribute__((used)) static int
waitdaemon(int maxwait)
{
 int fd;
 int status;
 pid_t pid, childpid;

 switch (childpid = fork()) {
 case -1:
  return (-1);
 case 0:
  break;
 default:
  signal(SIGALRM, timedout);
  alarm(maxwait);
  while ((pid = wait3(&status, 0, ((void*)0))) != -1) {
   if (WIFEXITED(status))
    errx(1, "child pid %d exited with return code %d",
     pid, WEXITSTATUS(status));
   if (WIFSIGNALED(status))
    errx(1, "child pid %d exited on signal %d%s",
     pid, WTERMSIG(status),
     WCOREDUMP(status) ? " (core dumped)" :
     "");
   if (pid == childpid)
    break;
  }
  exit(0);
 }

 if (setsid() == -1)
  return (-1);

 (void)chdir("/");
 if ((fd = open(_PATH_DEVNULL, O_RDWR, 0)) != -1) {
  (void)dup2(fd, STDIN_FILENO);
  (void)dup2(fd, STDOUT_FILENO);
  (void)dup2(fd, STDERR_FILENO);
  if (fd > STDERR_FILENO)
   (void)close(fd);
 }
 return (getppid());
}
