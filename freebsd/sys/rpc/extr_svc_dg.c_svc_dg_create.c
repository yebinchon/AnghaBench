
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct socket {int so_rcv; TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int sa_len; } ;
struct __rpc_sockinfo {int si_proto; int si_af; } ;
struct TYPE_11__ {int xp_ltaddr; int * xp_ops; int * xp_p2; int * xp_p1; struct socket* xp_socket; int * xp_pool; int xp_lock; } ;
struct TYPE_10__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_9__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;
typedef TYPE_3__ SVCXPRT ;
typedef int SVCPOOL ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int M_SONAME ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int __no_mem_str ;
 size_t __rpc_get_t_size (int ,int ,int) ;
 int __rpc_socket2sockinfo (struct socket*,struct __rpc_sockinfo*) ;
 int free (struct sockaddr*,int ) ;
 int memcpy (int *,struct sockaddr*,int ) ;
 int printf (char*,int ) ;
 int soupcall_set (struct socket*,int ,int ,TYPE_3__*) ;
 int stub1 (struct socket*,struct sockaddr**) ;
 int svc_dg_err1 ;
 int svc_dg_err2 ;
 int svc_dg_ops ;
 int svc_dg_soupcall ;
 char* svc_dg_str ;
 TYPE_3__* svc_xprt_alloc () ;
 int svc_xprt_free (TYPE_3__*) ;
 int sx_init (int *,char*) ;
 int xprt_register (TYPE_3__*) ;

SVCXPRT *
svc_dg_create(SVCPOOL *pool, struct socket *so, size_t sendsize,
    size_t recvsize)
{
 SVCXPRT *xprt;
 struct __rpc_sockinfo si;
 struct sockaddr* sa;
 int error;

 if (!__rpc_socket2sockinfo(so, &si)) {
  printf(svc_dg_str, svc_dg_err1);
  return (((void*)0));
 }



 sendsize = __rpc_get_t_size(si.si_af, si.si_proto, (int)sendsize);
 recvsize = __rpc_get_t_size(si.si_af, si.si_proto, (int)recvsize);
 if ((sendsize == 0) || (recvsize == 0)) {
  printf(svc_dg_str, svc_dg_err2);
  return (((void*)0));
 }

 xprt = svc_xprt_alloc();
 sx_init(&xprt->xp_lock, "xprt->xp_lock");
 xprt->xp_pool = pool;
 xprt->xp_socket = so;
 xprt->xp_p1 = ((void*)0);
 xprt->xp_p2 = ((void*)0);
 xprt->xp_ops = &svc_dg_ops;

 CURVNET_SET(so->so_vnet);
 error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
 CURVNET_RESTORE();
 if (error)
  goto freedata;

 memcpy(&xprt->xp_ltaddr, sa, sa->sa_len);
 free(sa, M_SONAME);

 xprt_register(xprt);

 SOCKBUF_LOCK(&so->so_rcv);
 soupcall_set(so, SO_RCV, svc_dg_soupcall, xprt);
 SOCKBUF_UNLOCK(&so->so_rcv);

 return (xprt);
freedata:
 (void) printf(svc_dg_str, __no_mem_str);
 svc_xprt_free(xprt);

 return (((void*)0));
}
