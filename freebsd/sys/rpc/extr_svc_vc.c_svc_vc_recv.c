
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xid_plus_direction ;
typedef int uint32_t ;
struct uio {int uio_resid; int uio_td; } ;
struct socket {int so_rcv; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct mbuf {int dummy; } ;
struct cf_conn {scalar_t__ resid; struct mbuf* mpending; void* strm_stat; TYPE_3__* mreq; scalar_t__ eor; } ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_12__ {struct mbuf* m_next; } ;
struct TYPE_11__ {int m_len; } ;
struct TYPE_10__ {int xp_lock; scalar_t__ xp_upcallset; int * xp_p2; struct socket* xp_socket; scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 int EWOULDBLOCK ;
 int FALSE ;
 int MSG_DONTWAIT ;
 int REPLY ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 void* XPRT_DIED ;
 int clnt_bck_svccall (int *,TYPE_3__*,int ) ;
 int curthread ;
 int m_copydata (TYPE_3__*,int ,int,char*) ;
 TYPE_7__* m_last (struct mbuf*) ;
 int m_length (TYPE_3__*,int *) ;
 int ntohl (int ) ;
 int soreadable (struct socket*) ;
 int soreceive (struct socket*,int *,struct uio*,struct mbuf**,int *,int*) ;
 int soupcall_clear (struct socket*,int ) ;
 int svc_vc_process_pending (TYPE_1__*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xdr_callmsg (int *,struct rpc_msg*) ;
 int xdrmbuf_create (int *,TYPE_3__*,int ) ;
 struct mbuf* xdrmbuf_getall (int *) ;
 int xprt_inactive_self (TYPE_1__*) ;

__attribute__((used)) static bool_t
svc_vc_recv(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr **addrp, struct mbuf **mp)
{
 struct cf_conn *cd = (struct cf_conn *) xprt->xp_p1;
 struct uio uio;
 struct mbuf *m;
 struct socket* so = xprt->xp_socket;
 XDR xdrs;
 int error, rcvflag;
 uint32_t xid_plus_direction[2];





 sx_xlock(&xprt->xp_lock);

 for (;;) {

  while (cd->mpending &&
      (cd->mreq == ((void*)0) || cd->resid != 0 || !cd->eor)) {
   if (!svc_vc_process_pending(xprt))
    break;
  }


  if (cd->mreq != ((void*)0) && cd->resid == 0 && cd->eor) {






   if ((cd->mreq->m_len >= sizeof(xid_plus_direction) ||
       m_length(cd->mreq, ((void*)0)) >=
       sizeof(xid_plus_direction)) &&
       xprt->xp_p2 != ((void*)0)) {
    m_copydata(cd->mreq, 0,
        sizeof(xid_plus_direction),
        (char *)xid_plus_direction);
    xid_plus_direction[0] =
        ntohl(xid_plus_direction[0]);
    xid_plus_direction[1] =
        ntohl(xid_plus_direction[1]);

    if (xid_plus_direction[1] == REPLY) {
     clnt_bck_svccall(xprt->xp_p2,
         cd->mreq,
         xid_plus_direction[0]);
     cd->mreq = ((void*)0);
     continue;
    }
   }

   xdrmbuf_create(&xdrs, cd->mreq, XDR_DECODE);
   cd->mreq = ((void*)0);


   svc_vc_process_pending(xprt);
   if (cd->mreq == ((void*)0) || cd->resid != 0) {
    SOCKBUF_LOCK(&so->so_rcv);
    if (!soreadable(so))
     xprt_inactive_self(xprt);
    SOCKBUF_UNLOCK(&so->so_rcv);
   }

   sx_xunlock(&xprt->xp_lock);

   if (! xdr_callmsg(&xdrs, msg)) {
    XDR_DESTROY(&xdrs);
    return (FALSE);
   }

   *addrp = ((void*)0);
   *mp = xdrmbuf_getall(&xdrs);
   XDR_DESTROY(&xdrs);

   return (TRUE);
  }
  uio.uio_resid = 1000000000;
  uio.uio_td = curthread;
  m = ((void*)0);
  rcvflag = MSG_DONTWAIT;
  error = soreceive(so, ((void*)0), &uio, &m, ((void*)0), &rcvflag);

  if (error == EWOULDBLOCK) {







   SOCKBUF_LOCK(&so->so_rcv);
   if (!soreadable(so))
    xprt_inactive_self(xprt);
   SOCKBUF_UNLOCK(&so->so_rcv);
   sx_xunlock(&xprt->xp_lock);
   return (FALSE);
  }

  if (error) {
   SOCKBUF_LOCK(&so->so_rcv);
   if (xprt->xp_upcallset) {
    xprt->xp_upcallset = 0;
    soupcall_clear(so, SO_RCV);
   }
   SOCKBUF_UNLOCK(&so->so_rcv);
   xprt_inactive_self(xprt);
   cd->strm_stat = XPRT_DIED;
   sx_xunlock(&xprt->xp_lock);
   return (FALSE);
  }

  if (!m) {



   xprt_inactive_self(xprt);
   cd->strm_stat = XPRT_DIED;
   sx_xunlock(&xprt->xp_lock);
   return (FALSE);
  }

  if (cd->mpending)
   m_last(cd->mpending)->m_next = m;
  else
   cd->mpending = m;
 }
}
