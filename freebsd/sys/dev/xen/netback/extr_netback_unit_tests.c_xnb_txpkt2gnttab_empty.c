
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xnb_pkt {scalar_t__ size; scalar_t__ list_len; } ;
struct mbuf {int dummy; } ;
struct TYPE_5__ {int req_cons; } ;
struct TYPE_4__ {TYPE_2__ txb; int gnttab; int ifp; } ;


 int DOMID_FIRST_RESERVED ;
 int XNB_ASSERT (int) ;
 int safe_m_freem (struct mbuf**) ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_2__*,int ) ;
 int xnb_txpkt2gnttab (struct xnb_pkt*,struct mbuf*,int ,TYPE_2__*,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_txpkt2gnttab_empty(char *buffer, size_t buflen)
{
 int n_entries;
 struct xnb_pkt pkt;
 struct mbuf *pMbuf;
 pkt.list_len = 0;


 xnb_ring2pkt(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);
 pkt.size = 0;
 pMbuf = xnb_pkt2mbufc(&pkt, xnb_unit_pvt.ifp);
 n_entries = xnb_txpkt2gnttab(&pkt, pMbuf, xnb_unit_pvt.gnttab,
     &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);
 XNB_ASSERT(n_entries == 0);
 safe_m_freem(&pMbuf);
}
