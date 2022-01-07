
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHLD ;
 int SIGHUP ;
 int WNOHANG ;
 int YPU_PROG ;
 int YPU_VERS ;
 int children ;
 int exit (int ) ;
 int load_securenets () ;
 int pmap_unset (int ,int ) ;
 scalar_t__ wait3 (int*,int ,int *) ;

__attribute__((used)) static void
reaper(int sig)
{
 int status;

 if (sig == SIGHUP) {



  return;
 }

 if (sig == SIGCHLD) {
  while (wait3(&status, WNOHANG, ((void*)0)) > 0)
   children--;
 } else {
  (void) pmap_unset(YPU_PROG, YPU_VERS);
  exit(0);
 }
}
