
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ buf; } ;
struct t_bind {scalar_t__ qlen; TYPE_1__ addr; } ;
struct socket {int dummy; } ;
struct sockaddr_storage {int ss_len; int ss_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {char* nc_netid; int nc_protofmly; } ;
struct __rpc_sockinfo {int si_socktype; int si_alen; int si_af; } ;
typedef scalar_t__ bool_t ;
struct TYPE_10__ {int * xp_socket; int xp_netid; int xp_type; } ;
typedef TYPE_2__ SVCXPRT ;
typedef int SVCPOOL ;


 scalar_t__ FALSE ;
 int M_RPC ;


 scalar_t__ TRUE ;
 struct socket* __rpc_nconf2socket (struct netconfig const*) ;
 int __rpc_nconf2sockinfo (struct netconfig const*,struct __rpc_sockinfo*) ;
 int __rpc_socket2sockinfo (struct socket*,struct __rpc_sockinfo*) ;
 int __rpc_sockisbound (struct socket*) ;
 int __rpc_socktype2seman (int) ;
 int __svc_vc_setflag (TYPE_2__*,scalar_t__) ;
 int _getpeername (int ,struct sockaddr*,int*) ;
 scalar_t__ bindresvport (struct socket*,struct sockaddr*) ;
 int curthread ;
 int fd ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int printf (char*,...) ;
 int slen ;
 scalar_t__ sobind (struct socket*,struct sockaddr*,int ) ;
 int soclose (struct socket*) ;
 int solisten (struct socket*,int,int ) ;
 int strcmp (int ,char*) ;
 int strdup (char*,int ) ;
 TYPE_2__* svc_dg_create (int *,struct socket*,size_t,size_t) ;
 TYPE_2__* svc_fd_create (int ,size_t,size_t) ;
 TYPE_2__* svc_vc_create (int *,struct socket*,size_t,size_t) ;
 int xprt_unregister (TYPE_2__*) ;

SVCXPRT *
svc_tli_create(
 SVCPOOL *pool,
 struct socket *so,
 const struct netconfig *nconf,
 const struct t_bind *bindaddr,
 size_t sendsz,
 size_t recvsz)
{
 SVCXPRT *xprt = ((void*)0);
 bool_t madeso = FALSE;
 struct __rpc_sockinfo si;
 struct sockaddr_storage ss;

 if (!so) {
  if (nconf == ((void*)0)) {
   printf("svc_tli_create: invalid netconfig\n");
   return (((void*)0));
  }
  so = __rpc_nconf2socket(nconf);
  if (!so) {
   printf(
       "svc_tli_create: could not open connection for %s\n",
     nconf->nc_netid);
   return (((void*)0));
  }
  __rpc_nconf2sockinfo(nconf, &si);
  madeso = TRUE;
 } else {



  if (!__rpc_socket2sockinfo(so, &si)) {
   printf(
  "svc_tli_create: could not get transport information\n");
   return (((void*)0));
  }
 }




 if (madeso || !__rpc_sockisbound(so)) {
  if (bindaddr == ((void*)0)) {
   if (bindresvport(so, ((void*)0))) {
    memset(&ss, 0, sizeof ss);
    ss.ss_family = si.si_af;
    ss.ss_len = si.si_alen;
    if (sobind(so, (struct sockaddr *)&ss,
     curthread)) {
     printf(
   "svc_tli_create: could not bind to anonymous port\n");
     goto freedata;
    }
   }
   solisten(so, -1, curthread);
  } else {
   if (bindresvport(so,
    (struct sockaddr *)bindaddr->addr.buf)) {
    printf(
  "svc_tli_create: could not bind to requested address\n");
    goto freedata;
   }
   solisten(so, (int)bindaddr->qlen, curthread);
  }

 }



 switch (si.si_socktype) {
  case 128:
    xprt = svc_vc_create(pool, so, sendsz, recvsz);
   if (!nconf || !xprt)
    break;






   break;
  case 129:
   xprt = svc_dg_create(pool, so, sendsz, recvsz);
   break;
  default:
   printf("svc_tli_create: bad service type");
   goto freedata;
 }

 if (xprt == ((void*)0))




  goto freedata;


 xprt->xp_type = __rpc_socktype2seman(si.si_socktype);

 if (nconf) {
  xprt->xp_netid = strdup(nconf->nc_netid, M_RPC);
 }
 return (xprt);

freedata:
 if (madeso)
  (void)soclose(so);
 if (xprt) {
  if (!madeso)
   xprt->xp_socket = ((void*)0);
  xprt_unregister(xprt);
 }
 return (((void*)0));
}
