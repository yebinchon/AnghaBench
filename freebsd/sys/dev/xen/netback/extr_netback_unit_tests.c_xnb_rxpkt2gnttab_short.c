
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct netif_rx_request {int gref; } ;
struct TYPE_8__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int m_flags; } ;
struct TYPE_12__ {scalar_t__ offset; scalar_t__ domid; } ;
struct TYPE_10__ {scalar_t__ gmfn; } ;
struct TYPE_11__ {scalar_t__ domid; scalar_t__ offset; TYPE_3__ u; } ;
struct TYPE_14__ {size_t len; int flags; TYPE_5__ dest; TYPE_4__ source; } ;
struct TYPE_9__ {int req_prod_pvt; } ;
struct TYPE_13__ {TYPE_7__* gnttab; int rxb; TYPE_2__ txf; int rxf; } ;
typedef int RING_IDX ;


 scalar_t__ DOMID_FIRST_RESERVED ;
 scalar_t__ DOMID_SELF ;
 int GNTCOPY_dest_gref ;
 int MT_DATA ;
 int M_PKTHDR ;
 int M_WAITOK ;
 struct netif_rx_request* RING_GET_REQUEST (int *,int ) ;
 int XNB_ASSERT (int) ;
 struct mbuf* m_getm (int *,size_t,int ,int ) ;
 int mtod (struct mbuf*,int ) ;
 int safe_m_freem (struct mbuf**) ;
 scalar_t__ virt_to_mfn (int ) ;
 scalar_t__ virt_to_offset (int ) ;
 int vm_offset_t ;
 int xnb_mbufc2pkt (struct mbuf*,struct xnb_pkt*,int,int) ;
 int xnb_rxpkt2gnttab (struct xnb_pkt*,struct mbuf*,TYPE_7__*,int *,scalar_t__) ;
 TYPE_6__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_rxpkt2gnttab_short(char *buffer, size_t buflen) {
 struct xnb_pkt pkt;
 int nr_entries;
 size_t size = 128;
 int free_slots = 60;
 RING_IDX start = 9;
 struct netif_rx_request *req;
 struct mbuf *mbuf;

 mbuf = m_getm(((void*)0), size, M_WAITOK, MT_DATA);
 mbuf->m_flags |= M_PKTHDR;
 mbuf->m_pkthdr.len = size;
 mbuf->m_len = size;

 xnb_mbufc2pkt(mbuf, &pkt, start, free_slots);
 req = RING_GET_REQUEST(&xnb_unit_pvt.rxf,
          xnb_unit_pvt.txf.req_prod_pvt);
 req->gref = 7;

 nr_entries = xnb_rxpkt2gnttab(&pkt, mbuf, xnb_unit_pvt.gnttab,
          &xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

 XNB_ASSERT(nr_entries == 1);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].len == size);

 XNB_ASSERT(xnb_unit_pvt.gnttab[0].flags & GNTCOPY_dest_gref);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].dest.offset == 0);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].source.domid == DOMID_SELF);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].source.offset == virt_to_offset(
     mtod(mbuf, vm_offset_t)));
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].source.u.gmfn ==
     virt_to_mfn(mtod(mbuf, vm_offset_t)));
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].dest.domid == DOMID_FIRST_RESERVED);

 safe_m_freem(&mbuf);
}
