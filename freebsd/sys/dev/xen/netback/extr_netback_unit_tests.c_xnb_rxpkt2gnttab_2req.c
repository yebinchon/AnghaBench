
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct netif_rx_request {int gref; int id; } ;
struct TYPE_6__ {size_t len; } ;
struct mbuf {size_t m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; int m_flags; } ;
struct TYPE_8__ {int offset; } ;
struct TYPE_10__ {int len; TYPE_3__ dest; } ;
struct TYPE_7__ {int req_prod_pvt; } ;
struct TYPE_9__ {TYPE_5__* gnttab; int rxb; TYPE_2__ txf; int rxf; } ;
typedef int RING_IDX ;


 int DOMID_FIRST_RESERVED ;
 int MJUMPAGESIZE ;
 int MT_DATA ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 struct netif_rx_request* RING_GET_REQUEST (int *,int ) ;
 int XNB_ASSERT (int) ;
 struct mbuf* m_getm (int *,size_t,int ,int ) ;
 int xnb_mbufc2pkt (struct mbuf*,struct xnb_pkt*,int,int) ;
 int xnb_rxpkt2gnttab (struct xnb_pkt*,struct mbuf*,TYPE_5__*,int *,int ) ;
 TYPE_4__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_rxpkt2gnttab_2req(char *buffer, size_t buflen)
{
 struct xnb_pkt pkt;
 int nr_entries;
 int i, num_mbufs;
 size_t total_granted_size = 0;
 size_t size = MJUMPAGESIZE + 1;
 int free_slots = 60;
 RING_IDX start = 11;
 struct netif_rx_request *req;
 struct mbuf *mbuf, *m;

 mbuf = m_getm(((void*)0), size, M_WAITOK, MT_DATA);
 mbuf->m_flags |= M_PKTHDR;
 mbuf->m_pkthdr.len = size;
 mbuf->m_len = size;

 xnb_mbufc2pkt(mbuf, &pkt, start, free_slots);

 for (i = 0, m=mbuf; m != ((void*)0); i++, m = m->m_next) {
  req = RING_GET_REQUEST(&xnb_unit_pvt.rxf,
      xnb_unit_pvt.txf.req_prod_pvt);
  req->gref = i;
  req->id = 5;
 }
 num_mbufs = i;

 nr_entries = xnb_rxpkt2gnttab(&pkt, mbuf, xnb_unit_pvt.gnttab,
   &xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

 XNB_ASSERT(nr_entries >= num_mbufs);
 for (i = 0; i < nr_entries; i++) {
  int end_offset = xnb_unit_pvt.gnttab[i].len +
   xnb_unit_pvt.gnttab[i].dest.offset;
  XNB_ASSERT(end_offset <= PAGE_SIZE);
  total_granted_size += xnb_unit_pvt.gnttab[i].len;
 }
 XNB_ASSERT(total_granted_size == size);
}
