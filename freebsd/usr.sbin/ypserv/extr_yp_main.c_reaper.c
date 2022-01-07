
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHLD ;
 int SIGHUP ;
 int WNOHANG ;
 int children ;
 int errno ;
 int exit (int ) ;
 int load_securenets () ;
 int unregister () ;
 scalar_t__ wait3 (int*,int ,int *) ;
 int yp_flush_all () ;

__attribute__((used)) static void
reaper(int sig)
{
 int status;
 int saved_errno;

 saved_errno = errno;

 if (sig == SIGHUP) {
  load_securenets();



  errno = saved_errno;
  return;
 }

 if (sig == SIGCHLD) {
  while (wait3(&status, WNOHANG, ((void*)0)) > 0)
   children--;
 } else {
  unregister();
  exit(0);
 }
 errno = saved_errno;
 return;
}
