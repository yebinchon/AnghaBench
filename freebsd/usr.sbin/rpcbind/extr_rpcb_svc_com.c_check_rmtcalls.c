
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int fd; scalar_t__ revents; } ;
struct TYPE_4__ {char* xp_netid; } ;
typedef TYPE_1__ SVCXPRT ;


 scalar_t__ debugging ;
 TYPE_1__* find_rmtcallxprt_by_fd (int) ;
 int fprintf (int ,char*,int,char*) ;
 int handle_reply (int,TYPE_1__*) ;
 int rpcb_rmtcalls ;
 int stderr ;

__attribute__((used)) static int
check_rmtcalls(struct pollfd *pfds, int nfds)
{
 int j, ncallbacks_found = 0, rmtcalls_pending;
 SVCXPRT *xprt;

 if (rpcb_rmtcalls == 0)
  return (0);

 rmtcalls_pending = rpcb_rmtcalls;
 for (j = 0; j < nfds; j++) {
  if ((xprt = find_rmtcallxprt_by_fd(pfds[j].fd)) != ((void*)0)) {
   if (pfds[j].revents) {
    ncallbacks_found++;






    handle_reply(pfds[j].fd, xprt);
    pfds[j].revents = 0;
    if (ncallbacks_found >= rmtcalls_pending) {
     break;
    }
   }
  }
 }
 return (ncallbacks_found);
}
