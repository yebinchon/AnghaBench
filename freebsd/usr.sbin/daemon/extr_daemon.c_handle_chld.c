
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int WNOHANG ;
 int child_gone ;
 scalar_t__ errno ;
 int pid ;
 int waitpid (int,int *,int ) ;
 int warn (char*) ;

__attribute__((used)) static void
handle_chld(int signo)
{
 (void)signo;
 for (;;) {
  int rv = waitpid(-1, ((void*)0), WNOHANG);
  if (pid == rv) {
   child_gone = 1;
   break;
  } else if (rv == -1 && errno != EINTR) {
   warn("waitpid");
   return;
  }
 }
}
