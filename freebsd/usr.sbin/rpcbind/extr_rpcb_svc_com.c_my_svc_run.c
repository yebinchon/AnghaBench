
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int revents; void* events; } ;
typedef int fd_set ;


 int FALSE ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SETSIZE ;
 int LOG_ERR ;
 void* MASKVAL ;
 int __svc_clean_idle (int *,int,int ) ;
 int check_rmtcalls (struct pollfd*,size_t) ;
 int close (int ) ;
 scalar_t__ debugging ;
 scalar_t__ doterminate ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int poll (struct pollfd*,size_t,int) ;
 int rpcbindlockfd ;
 int stderr ;
 int svc_fdset ;
 int svc_getreq_poll (struct pollfd*,int) ;
 int svc_maxfd ;
 int syslog (int ,char*,int) ;
 int terminate_rfd ;
 int write_warmstart () ;

void
my_svc_run(void)
{
 size_t nfds;
 struct pollfd pollfds[FD_SETSIZE + 1];
 int poll_ret, check_ret;
 int n;



 register struct pollfd *p;
 fd_set cleanfds;

 for (;;) {
  p = pollfds;
  p->fd = terminate_rfd;
  p->events = MASKVAL;
  p++;
  for (n = 0; n <= svc_maxfd; n++) {
   if (FD_ISSET(n, &svc_fdset)) {
    p->fd = n;
    p->events = MASKVAL;
    p++;
   }
  }
  nfds = p - pollfds;
  poll_ret = 0;
  poll_ret = poll(pollfds, nfds, 30 * 1000);

  if (doterminate != 0) {
   close(rpcbindlockfd);






   exit(2);
  }

  switch (poll_ret) {
  case -1:





  case 0:
   cleanfds = svc_fdset;
   __svc_clean_idle(&cleanfds, 30, FALSE);
   continue;
  default:
   if ((check_ret = check_rmtcalls(pollfds, nfds)) ==
       poll_ret)
    continue;
   svc_getreq_poll(pollfds, poll_ret-check_ret);
  }





 }
}
