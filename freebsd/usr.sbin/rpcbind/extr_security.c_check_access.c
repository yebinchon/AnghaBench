
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
struct request_info {int dummy; } ;
struct pmap {int pm_prog; } ;
struct netbuf {scalar_t__ buf; } ;
typedef int rpcprog_t ;
typedef int const rpcproc_t ;
struct TYPE_2__ {int r_prog; } ;
typedef TYPE_1__ rpcb ;
typedef int SVCXPRT ;


 scalar_t__ AF_LOCAL ;
 unsigned int PMAPVERS ;
 int RQ_CLIENT_SIN ;
 int RQ_DAEMON ;
 int deny_severity ;
 int hosts_access (struct request_info*) ;
 int insecure ;
 int is_loopback (struct netbuf*) ;
 scalar_t__ libwrap ;
 int log_severity ;
 int logit (int ,struct sockaddr*,int const,int ,char*) ;
 int request_init (struct request_info*,int ,char*,int ,struct sockaddr*,int ) ;
 int sock_methods (struct request_info*) ;
 struct netbuf* svc_getrpccaller (int *) ;
 scalar_t__ verboselog ;

int
check_access(SVCXPRT *xprt, rpcproc_t proc, void *args, unsigned int rpcbvers)
{
 struct netbuf *caller = svc_getrpccaller(xprt);
 struct sockaddr *addr = (struct sockaddr *)caller->buf;



 rpcprog_t prog = 0;
 rpcb *rpcbp;
 struct pmap *pmap;





 switch (proc) {
 case 137:
 case 131:
 case 128:
  if (rpcbvers > PMAPVERS) {
   rpcbp = (rpcb *)args;
   prog = rpcbp->r_prog;
  } else {
   pmap = (struct pmap *)args;
   prog = pmap->pm_prog;
  }
  if (proc == 137)
   break;
  if (!insecure && !is_loopback(caller)) {
   if (verboselog)
    logit(log_severity, addr, proc, prog,
        " declined (non-loopback sender)");
   return 0;
  }
  break;
 case 139:
 case 132:
 case 138:
 case 134:
 case 129:
 case 130:
 case 133:
 case 136:
 case 135:
 default:
  break;
 }
 if (verboselog)
  logit(log_severity, addr, proc, prog, "");
     return 1;
}
