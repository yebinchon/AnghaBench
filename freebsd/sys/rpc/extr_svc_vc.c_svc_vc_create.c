
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct socket {int so_state; TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int sa_len; } ;
struct TYPE_12__ {int xp_upcallset; int xp_lock; int xp_ltaddr; int * xp_ops; int * xp_p2; int * xp_p1; struct socket* xp_socket; int * xp_pool; } ;
struct TYPE_11__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_10__ {int (* pru_peeraddr ) (struct socket*,struct sockaddr**) ;int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;
typedef TYPE_3__ SVCXPRT ;
typedef int SVCPOOL ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int M_SONAME ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SOLISTEN_LOCK (struct socket*) ;
 int SOLISTEN_UNLOCK (struct socket*) ;
 int SS_ISCONNECTED ;
 int SS_ISDISCONNECTED ;
 int curthread ;
 int free (struct sockaddr*,int ) ;
 int memcpy (int *,struct sockaddr*,int ) ;
 int solisten (struct socket*,int,int ) ;
 int solisten_upcall_set (struct socket*,int ,TYPE_3__*) ;
 int stub1 (struct socket*,struct sockaddr**) ;
 int stub2 (struct socket*,struct sockaddr**) ;
 TYPE_3__* svc_vc_create_conn (int *,struct socket*,struct sockaddr*) ;
 int svc_vc_rendezvous_ops ;
 int svc_vc_rendezvous_soupcall ;
 TYPE_3__* svc_xprt_alloc () ;
 int svc_xprt_free (TYPE_3__*) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;
 int xprt_register (TYPE_3__*) ;

SVCXPRT *
svc_vc_create(SVCPOOL *pool, struct socket *so, size_t sendsize,
    size_t recvsize)
{
 SVCXPRT *xprt;
 struct sockaddr* sa;
 int error;

 SOCK_LOCK(so);
 if (so->so_state & (SS_ISCONNECTED|SS_ISDISCONNECTED)) {
  SOCK_UNLOCK(so);
  CURVNET_SET(so->so_vnet);
  error = so->so_proto->pr_usrreqs->pru_peeraddr(so, &sa);
  CURVNET_RESTORE();
  if (error)
   return (((void*)0));
  xprt = svc_vc_create_conn(pool, so, sa);
  free(sa, M_SONAME);
  return (xprt);
 }
 SOCK_UNLOCK(so);

 xprt = svc_xprt_alloc();
 sx_init(&xprt->xp_lock, "xprt->xp_lock");
 xprt->xp_pool = pool;
 xprt->xp_socket = so;
 xprt->xp_p1 = ((void*)0);
 xprt->xp_p2 = ((void*)0);
 xprt->xp_ops = &svc_vc_rendezvous_ops;

 CURVNET_SET(so->so_vnet);
 error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
 CURVNET_RESTORE();
 if (error) {
  goto cleanup_svc_vc_create;
 }

 memcpy(&xprt->xp_ltaddr, sa, sa->sa_len);
 free(sa, M_SONAME);

 xprt_register(xprt);

 solisten(so, -1, curthread);

 SOLISTEN_LOCK(so);
 xprt->xp_upcallset = 1;
 solisten_upcall_set(so, svc_vc_rendezvous_soupcall, xprt);
 SOLISTEN_UNLOCK(so);

 return (xprt);

cleanup_svc_vc_create:
 sx_destroy(&xprt->xp_lock);
 svc_xprt_free(xprt);

 return (((void*)0));
}
