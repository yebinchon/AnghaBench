
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {scalar_t__ ar_stat; } ;
struct TYPE_6__ {scalar_t__ rp_stat; TYPE_1__ rp_acpt; } ;
struct rpc_msg {TYPE_2__ rm_reply; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;
struct TYPE_7__ {int * xp_p2; int xp_socket; } ;
typedef TYPE_3__ SVCXPRT ;


 scalar_t__ FALSE ;
 scalar_t__ MSG_ACCEPTED ;
 int MT_DATA ;
 int M_WAITOK ;
 scalar_t__ SUCCESS ;
 scalar_t__ TRUE ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int curthread ;
 int m_fixhdr (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_gethdr (int ,int ) ;
 int sosend (int ,struct sockaddr*,int *,struct mbuf*,int *,int ,int ) ;
 scalar_t__ xdr_replymsg (int *,struct rpc_msg*) ;
 int xdrmbuf_append (int *,struct mbuf*) ;
 int xdrmbuf_create (int *,struct mbuf*,int ) ;

__attribute__((used)) static bool_t
svc_dg_reply(SVCXPRT *xprt, struct rpc_msg *msg,
    struct sockaddr *addr, struct mbuf *m, uint32_t *seq)
{
 XDR xdrs;
 struct mbuf *mrep;
 bool_t stat = TRUE;
 int error;

 mrep = m_gethdr(M_WAITOK, MT_DATA);

 xdrmbuf_create(&xdrs, mrep, XDR_ENCODE);

 if (msg->rm_reply.rp_stat == MSG_ACCEPTED &&
     msg->rm_reply.rp_acpt.ar_stat == SUCCESS) {
  if (!xdr_replymsg(&xdrs, msg))
   stat = FALSE;
  else
   xdrmbuf_append(&xdrs, m);
 } else {
  stat = xdr_replymsg(&xdrs, msg);
 }

 if (stat) {
  m_fixhdr(mrep);
  error = sosend(xprt->xp_socket, addr, ((void*)0), mrep, ((void*)0),
      0, curthread);
  if (!error) {
   stat = TRUE;
  }
 } else {
  m_freem(mrep);
 }

 XDR_DESTROY(&xdrs);
 xprt->xp_p2 = ((void*)0);

 return (stat);
}
