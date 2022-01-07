
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int bool_t ;
struct TYPE_11__ {int sol_comp; } ;
struct TYPE_10__ {int xp_pool; int xp_lock; TYPE_5__* xp_socket; scalar_t__ xp_upcallset; } ;
typedef TYPE_1__ SVCXPRT ;


 int EWOULDBLOCK ;
 int FALSE ;
 int M_SONAME ;
 int SOLISTEN_LOCK (TYPE_5__*) ;
 int SOLISTEN_UNLOCK (TYPE_5__*) ;
 int SO_RCV ;
 int SVC_RELEASE (TYPE_1__*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int free (struct sockaddr*,int ) ;
 int soaccept (struct socket*,struct sockaddr**) ;
 int soclose (struct socket*) ;
 int soupcall_clear (TYPE_5__*,int ) ;
 int svc_vc_accept (TYPE_5__*,struct socket**) ;
 TYPE_1__* svc_vc_create_conn (int ,struct socket*,struct sockaddr*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xprt_inactive_self (TYPE_1__*) ;

__attribute__((used)) static bool_t
svc_vc_rendezvous_recv(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
 struct socket *so = ((void*)0);
 struct sockaddr *sa = ((void*)0);
 int error;
 SVCXPRT *new_xprt;
 sx_xlock(&xprt->xp_lock);

 error = svc_vc_accept(xprt->xp_socket, &so);

 if (error == EWOULDBLOCK) {






  SOLISTEN_LOCK(xprt->xp_socket);
  if (TAILQ_EMPTY(&xprt->xp_socket->sol_comp))
   xprt_inactive_self(xprt);
  SOLISTEN_UNLOCK(xprt->xp_socket);
  sx_xunlock(&xprt->xp_lock);
  return (FALSE);
 }

 if (error) {
  SOLISTEN_LOCK(xprt->xp_socket);
  if (xprt->xp_upcallset) {
   xprt->xp_upcallset = 0;
   soupcall_clear(xprt->xp_socket, SO_RCV);
  }
  SOLISTEN_UNLOCK(xprt->xp_socket);
  xprt_inactive_self(xprt);
  sx_xunlock(&xprt->xp_lock);
  return (FALSE);
 }

 sx_xunlock(&xprt->xp_lock);

 sa = ((void*)0);
 error = soaccept(so, &sa);

 if (error) {



  if (sa)
   free(sa, M_SONAME);
  return (FALSE);
 }





 new_xprt = svc_vc_create_conn(xprt->xp_pool, so, sa);
 if (!new_xprt) {
  soclose(so);
 } else {
  SVC_RELEASE(new_xprt);
 }

 free(sa, M_SONAME);

 return (FALSE);
}
