
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fork () ;
 scalar_t__ ftruncate (scalar_t__,int ) ;
 scalar_t__ listen_fd ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static void
do_fork(void)
{
 int pid;

 pid = fork();
 if (pid < 0)
  err(1, "fork");
 if (pid > 0) {
  waitpid(pid, ((void*)0), 0);
  exit(0);
 }






 if (ftruncate(listen_fd + 1, 0) < 0) {
  if (errno == EBADF)
   exit(0);
  else if (errno == EINVAL)
   errx(1, "file descriptor still open in child");
  else
   err(1, "unexpected error");
 } else
  errx(1, "ftruncate succeeded");
}
