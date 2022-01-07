
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {struct mbuf* m_nextpkt; } ;
struct cf_conn {struct mbuf* mreq; } ;
struct TYPE_4__ {scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 int m_freem (struct mbuf*) ;
 int mem_free (struct cf_conn*,int) ;
 int svc_xprt_free (TYPE_1__*) ;

__attribute__((used)) static void
svc_vc_backchannel_destroy(SVCXPRT *xprt)
{
 struct cf_conn *cd = (struct cf_conn *)xprt->xp_p1;
 struct mbuf *m, *m2;

 svc_xprt_free(xprt);
 m = cd->mreq;
 while (m != ((void*)0)) {
  m2 = m;
  m = m->m_nextpkt;
  m_freem(m2);
 }
 mem_free(cd, sizeof(*cd));
}
