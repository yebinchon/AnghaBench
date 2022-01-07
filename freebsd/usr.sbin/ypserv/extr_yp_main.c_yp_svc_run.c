
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int fd_set ;


 int EINTR ;
 int FD_CLR (int ,int*) ;
 int FD_ISSET (int ,int*) ;
 int FD_SET (int ,int*) ;
 int RESOLVER_TIMEOUT ;
 int _exit (int ) ;
 int _rpc_dtablesize () ;
 int errno ;
 scalar_t__ getpid () ;
 int resfd ;
 int select (int,int*,int *,int *,struct timeval*) ;
 int svc_fds ;
 int svc_fdset ;
 int svc_getreqset (int*) ;
 int warn (char*) ;
 scalar_t__ yp_pid ;
 int yp_prune_dnsq () ;
 int yp_run_dnsq () ;

__attribute__((used)) static void
yp_svc_run(void)
{



 int readfds;

 int fd_setsize = _rpc_dtablesize();
 struct timeval timeout;


 yp_pid = getpid();

 for (;;) {



  readfds = svc_fds;


  FD_SET(resfd, &readfds);

  timeout.tv_sec = RESOLVER_TIMEOUT;
  timeout.tv_usec = 0;
  switch (select(fd_setsize, &readfds, ((void*)0), ((void*)0),
          &timeout)) {
  case -1:
   if (errno == EINTR) {
    continue;
   }
   warn("svc_run: - select failed");
   return;
  case 0:
   if (getpid() == yp_pid)
    yp_prune_dnsq();
   break;
  default:
   if (getpid() == yp_pid) {
    if (FD_ISSET(resfd, &readfds)) {
     yp_run_dnsq();
     FD_CLR(resfd, &readfds);
    }
    svc_getreqset(&readfds);
   }
  }
  if (yp_pid != getpid())
   _exit(0);
 }
}
