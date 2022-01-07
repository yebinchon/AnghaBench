
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int ifp; } ;


 size_t MINCLSIZE ;
 size_t const M_TRAILINGSPACE (struct mbuf*) ;
 int XNB_ASSERT (int) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_get1pkt (struct xnb_pkt*,size_t const,int ) ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_pkt2mbufc_1cluster(char *buffer, size_t buflen)
{
 const size_t size = MINCLSIZE;
 struct xnb_pkt pkt;
 struct mbuf *pMbuf;

 xnb_get1pkt(&pkt, size, 0);

 pMbuf = xnb_pkt2mbufc(&pkt, xnb_unit_pvt.ifp);
 XNB_ASSERT(M_TRAILINGSPACE(pMbuf) >= size);
 safe_m_freem(&pMbuf);
}
