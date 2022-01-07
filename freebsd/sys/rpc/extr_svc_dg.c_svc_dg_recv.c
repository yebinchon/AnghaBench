
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct uio {int uio_resid; int uio_td; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_8__ {int so_rcv; } ;
struct TYPE_7__ {int xp_lock; TYPE_4__* xp_socket; } ;
typedef TYPE_1__ SVCXPRT ;


 int EWOULDBLOCK ;
 int FALSE ;
 int MSG_DONTWAIT ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 int curthread ;
 int soreadable (TYPE_4__*) ;
 int soreceive (TYPE_4__*,struct sockaddr**,struct uio*,struct mbuf**,int *,int*) ;
 int soupcall_clear (TYPE_4__*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xdr_callmsg (int *,struct rpc_msg*) ;
 int xdrmbuf_create (int *,struct mbuf*,int ) ;
 struct mbuf* xdrmbuf_getall (int *) ;
 int xprt_inactive_self (TYPE_1__*) ;

__attribute__((used)) static bool_t
svc_dg_recv(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
 struct uio uio;
 struct sockaddr *raddr;
 struct mbuf *mreq;
 XDR xdrs;
 int error, rcvflag;




 sx_xlock(&xprt->xp_lock);
 uio.uio_resid = 1000000000;
 uio.uio_td = curthread;
 mreq = ((void*)0);
 rcvflag = MSG_DONTWAIT;
 error = soreceive(xprt->xp_socket, &raddr, &uio, &mreq, ((void*)0), &rcvflag);

 if (error == EWOULDBLOCK) {
  SOCKBUF_LOCK(&xprt->xp_socket->so_rcv);
  if (!soreadable(xprt->xp_socket))
   xprt_inactive_self(xprt);
  SOCKBUF_UNLOCK(&xprt->xp_socket->so_rcv);
  sx_xunlock(&xprt->xp_lock);
  return (FALSE);
 }

 if (error) {
  SOCKBUF_LOCK(&xprt->xp_socket->so_rcv);
  soupcall_clear(xprt->xp_socket, SO_RCV);
  SOCKBUF_UNLOCK(&xprt->xp_socket->so_rcv);
  xprt_inactive_self(xprt);
  sx_xunlock(&xprt->xp_lock);
  return (FALSE);
 }

 sx_xunlock(&xprt->xp_lock);

 xdrmbuf_create(&xdrs, mreq, XDR_DECODE);
 if (! xdr_callmsg(&xdrs, msg)) {
  XDR_DESTROY(&xdrs);
  return (FALSE);
 }

 *addrp = raddr;
 *mp = xdrmbuf_getall(&xdrs);
 XDR_DESTROY(&xdrs);

 return (TRUE);
}
