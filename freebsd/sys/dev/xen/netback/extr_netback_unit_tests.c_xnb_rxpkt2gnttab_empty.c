
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int rxb; int gnttab; } ;


 int DOMID_FIRST_RESERVED ;
 int MT_DATA ;
 int M_WAITOK ;
 int XNB_ASSERT (int) ;
 struct mbuf* m_get (int ,int ) ;
 int safe_m_freem (struct mbuf**) ;
 int xnb_mbufc2pkt (struct mbuf*,struct xnb_pkt*,int ,int) ;
 int xnb_rxpkt2gnttab (struct xnb_pkt*,struct mbuf*,int ,int *,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_rxpkt2gnttab_empty(char *buffer, size_t buflen)
{
 struct xnb_pkt pkt;
 int nr_entries;
 int free_slots = 60;
 struct mbuf *mbuf;

 mbuf = m_get(M_WAITOK, MT_DATA);

 xnb_mbufc2pkt(mbuf, &pkt, 0, free_slots);
 nr_entries = xnb_rxpkt2gnttab(&pkt, mbuf, xnb_unit_pvt.gnttab,
   &xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

 XNB_ASSERT(nr_entries == 0);

 safe_m_freem(&mbuf);
}
