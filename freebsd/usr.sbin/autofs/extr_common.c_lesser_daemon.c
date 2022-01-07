
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int STDIN_FILENO ;
 int _PATH_DEVNULL ;
 int chdir (char*) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int log_warn (char*,...) ;
 int open (int ,int ,int ) ;

void
lesser_daemon(void)
{
 int error, fd;

 error = chdir("/");
 if (error != 0)
  log_warn("chdir");

 fd = open(_PATH_DEVNULL, O_RDWR, 0);
 if (fd < 0) {
  log_warn("cannot open %s", _PATH_DEVNULL);
  return;
 }

 error = dup2(fd, STDIN_FILENO);
 if (error != 0)
  log_warn("dup2");

 error = close(fd);
 if (error != 0) {

  log_warn("close");
 }
}
