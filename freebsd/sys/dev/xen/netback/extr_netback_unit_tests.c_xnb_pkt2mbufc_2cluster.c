
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct mbuf {struct mbuf* m_next; } ;
struct TYPE_2__ {int ifp; } ;


 int MCLBYTES ;
 scalar_t__ M_TRAILINGSPACE (struct mbuf*) ;
 int XNB_ASSERT (int) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_get1pkt (struct xnb_pkt*,size_t const,int ) ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_pkt2mbufc_2cluster(char *buffer, size_t buflen)
{
 const size_t size = 2 * MCLBYTES + 1;
 size_t space = 0;
 struct xnb_pkt pkt;
 struct mbuf *pMbuf;
 struct mbuf *m;

 xnb_get1pkt(&pkt, size, 0);

 pMbuf = xnb_pkt2mbufc(&pkt, xnb_unit_pvt.ifp);

 for (m = pMbuf; m != ((void*)0); m = m->m_next) {
  space += M_TRAILINGSPACE(m);
 }
 XNB_ASSERT(space >= size);
 safe_m_freem(&pMbuf);
}
