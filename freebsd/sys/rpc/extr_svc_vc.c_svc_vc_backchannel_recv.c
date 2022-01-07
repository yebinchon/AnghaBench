
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ct_data {int ct_lock; } ;
struct cf_conn {struct mbuf* mreq; } ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_4__ {int xp_lock; scalar_t__ xp_p2; scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 int FALSE ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xdr_callmsg (int *,struct rpc_msg*) ;
 int xdrmbuf_create (int *,struct mbuf*,int ) ;
 struct mbuf* xdrmbuf_getall (int *) ;
 int xprt_inactive_self (TYPE_1__*) ;

__attribute__((used)) static bool_t
svc_vc_backchannel_recv(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
 struct cf_conn *cd = (struct cf_conn *) xprt->xp_p1;
 struct ct_data *ct;
 struct mbuf *m;
 XDR xdrs;

 sx_xlock(&xprt->xp_lock);
 ct = (struct ct_data *)xprt->xp_p2;
 if (ct == ((void*)0)) {
  sx_xunlock(&xprt->xp_lock);
  return (FALSE);
 }
 mtx_lock(&ct->ct_lock);
 m = cd->mreq;
 if (m == ((void*)0)) {
  xprt_inactive_self(xprt);
  mtx_unlock(&ct->ct_lock);
  sx_xunlock(&xprt->xp_lock);
  return (FALSE);
 }
 cd->mreq = m->m_nextpkt;
 mtx_unlock(&ct->ct_lock);
 sx_xunlock(&xprt->xp_lock);

 xdrmbuf_create(&xdrs, m, XDR_DECODE);
 if (! xdr_callmsg(&xdrs, msg)) {
  XDR_DESTROY(&xdrs);
  return (FALSE);
 }
 *addrp = ((void*)0);
 *mp = xdrmbuf_getall(&xdrs);
 XDR_DESTROY(&xdrs);
 return (TRUE);
}
