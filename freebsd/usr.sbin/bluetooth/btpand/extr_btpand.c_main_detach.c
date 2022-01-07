
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int SIGUSR1 ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_DEVNULL ;
 int close (int) ;
 int dup2 (int,int ) ;
 int getppid () ;
 int kill (int ,int ) ;
 int log_err (char*,...) ;
 int open (int ,int ,int ) ;
 int setsid () ;

__attribute__((used)) static void
main_detach(void)
{
 int fd;

 if (kill(getppid(), SIGUSR1) == -1)
  log_err("Could not signal main process: %m");

 if (setsid() == -1)
  log_err("setsid() failed");

 fd = open(_PATH_DEVNULL, O_RDWR, 0);
 if (fd == -1) {
  log_err("Could not open %s", _PATH_DEVNULL);
 } else {
  (void)dup2(fd, STDIN_FILENO);
  (void)dup2(fd, STDOUT_FILENO);
  (void)dup2(fd, STDERR_FILENO);
  close(fd);
 }
}
