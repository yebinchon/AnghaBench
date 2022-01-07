
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cf_conn {scalar_t__ mpending; scalar_t__ mreq; } ;
struct TYPE_6__ {int so_rcv; } ;
struct TYPE_5__ {TYPE_4__* xp_socket; scalar_t__ xp_upcallset; scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int m_freem (scalar_t__) ;
 int mem_free (struct cf_conn*,int) ;
 int soupcall_clear (TYPE_4__*,int ) ;
 int svc_vc_destroy_common (TYPE_1__*) ;

__attribute__((used)) static void
svc_vc_destroy(SVCXPRT *xprt)
{
 struct cf_conn *cd = (struct cf_conn *)xprt->xp_p1;

 SOCKBUF_LOCK(&xprt->xp_socket->so_rcv);
 if (xprt->xp_upcallset) {
  xprt->xp_upcallset = 0;
  soupcall_clear(xprt->xp_socket, SO_RCV);
 }
 SOCKBUF_UNLOCK(&xprt->xp_socket->so_rcv);

 svc_vc_destroy_common(xprt);

 if (cd->mreq)
  m_freem(cd->mreq);
 if (cd->mpending)
  m_freem(cd->mpending);
 mem_free(cd, sizeof(*cd));
}
