
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct TYPE_3__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int ifp; } ;


 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int MINCLSIZE ;
 size_t const M_TRAILINGSPACE (struct mbuf*) ;
 int NETTXF_data_validated ;
 int XNB_ASSERT (int) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_get1pkt (struct xnb_pkt*,size_t const,int ) ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 TYPE_2__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_pkt2mbufc_csum(char *buffer, size_t buflen)
{
 const size_t size = MINCLSIZE - 1;
 struct xnb_pkt pkt;
 struct mbuf *pMbuf;

 xnb_get1pkt(&pkt, size, NETTXF_data_validated);

 pMbuf = xnb_pkt2mbufc(&pkt, xnb_unit_pvt.ifp);
 XNB_ASSERT(M_TRAILINGSPACE(pMbuf) >= size);
 XNB_ASSERT(pMbuf->m_pkthdr.csum_flags & CSUM_IP_CHECKED);
 XNB_ASSERT(pMbuf->m_pkthdr.csum_flags & CSUM_IP_VALID);
 XNB_ASSERT(pMbuf->m_pkthdr.csum_flags & CSUM_DATA_VALID);
 XNB_ASSERT(pMbuf->m_pkthdr.csum_flags & CSUM_PSEUDO_HDR);
 safe_m_freem(&pMbuf);
}
