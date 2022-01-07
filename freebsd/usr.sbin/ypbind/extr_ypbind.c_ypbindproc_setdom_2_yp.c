
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ypbind_binding_port; int ypbind_binding_addr; } ;
struct TYPE_7__ {scalar_t__ ypsetdom_vers; int ypsetdom_domain; TYPE_2__ ypsetdom_binding; } ;
typedef TYPE_3__ ypbind_setdom ;
typedef int u_short ;
typedef int u_int32_t ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int SVCXPRT ;
typedef int CLIENT ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 scalar_t__ IPPORT_RESERVED ;
 int LOG_WARNING ;



 scalar_t__ YPVERS ;
 int bzero (struct sockaddr_in*,int) ;
 int htonl (int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ ntohs (int ) ;
 int rpc_received (int ,struct sockaddr_in*,int) ;
 scalar_t__ strchr (int ,char) ;
 struct sockaddr_in* svc_getcaller (int *) ;
 int svcerr_noprog (int *) ;
 int syslog (int ,char*,int ) ;
 int ypsetmode ;

void *
ypbindproc_setdom_2_yp(SVCXPRT *transp, ypbind_setdom *argp, CLIENT *clnt)
{
 struct sockaddr_in *fromsin, bindsin;
 static char *result = ((void*)0);

 if (strchr(argp->ypsetdom_domain, '/')) {
  syslog(LOG_WARNING, "Domain name '%s' has embedded slash -- rejecting.", argp->ypsetdom_domain);

  return(((void*)0));
 }
 fromsin = svc_getcaller(transp);

 switch (ypsetmode) {
 case 129:
  if (fromsin->sin_addr.s_addr != htonl(INADDR_LOOPBACK)) {
   svcerr_noprog(transp);
   return(((void*)0));
  }
  break;
 case 130:
  break;
 case 128:
 default:
  svcerr_noprog(transp);
  return(((void*)0));
 }

 if (ntohs(fromsin->sin_port) >= IPPORT_RESERVED) {
  svcerr_noprog(transp);
  return(((void*)0));
 }

 if (argp->ypsetdom_vers != YPVERS) {
  svcerr_noprog(transp);
  return(((void*)0));
 }

 bzero(&bindsin, sizeof bindsin);
 bindsin.sin_family = AF_INET;
 memcpy(&bindsin.sin_addr.s_addr,
     &argp->ypsetdom_binding.ypbind_binding_addr,
     sizeof(u_int32_t));
 memcpy(&bindsin.sin_port,
     &argp->ypsetdom_binding.ypbind_binding_port,
     sizeof(u_short));
 rpc_received(argp->ypsetdom_domain, &bindsin, 1);

 return((void *) &result);
}
