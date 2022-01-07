
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int SIG_PF ;


 scalar_t__ FD_ISSET (int,int *) ;
 int SIGALRM ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ _IDLE ;
 int _RPCSVC_CLOSEDOWN ;
 scalar_t__ _SERVED ;
 scalar_t__ _rpcfdtype ;
 scalar_t__ _rpcsvcstate ;
 int alarm (int) ;
 int exit (int ) ;
 int getdtablesize () ;
 int signal (int ,int ) ;

__attribute__((used)) static void
closedown(int sig)
{
 if (_rpcsvcstate == _IDLE) {
  extern fd_set svc_fdset;
  static int size;
  int i, openfd;

  if (_rpcfdtype == SOCK_DGRAM)
   exit(0);
  if (size == 0) {
   size = getdtablesize();
  }
  for (i = 0, openfd = 0; i < size && openfd < 2; i++)
   if (FD_ISSET(i, &svc_fdset))
    openfd++;
  if (openfd <= 1)
   exit(0);
 }
 if (_rpcsvcstate == _SERVED)
  _rpcsvcstate = _IDLE;

 (void) signal(SIGALRM, (SIG_PF) closedown);
 (void) alarm(_RPCSVC_CLOSEDOWN/2);
}
