
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct xnb_pkt {int dummy; } ;
struct netif_tx_request {int size; int gref; scalar_t__ offset; scalar_t__ flags; } ;
struct mbuf {struct mbuf* m_next; } ;
struct TYPE_14__ {int req_prod_pvt; } ;
struct TYPE_13__ {int req_cons; } ;
struct TYPE_10__ {int offset; } ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct TYPE_12__ {int len; TYPE_2__ source; TYPE_1__ dest; } ;
struct TYPE_11__ {TYPE_4__* gnttab; TYPE_5__ txb; int ifp; TYPE_7__ txf; } ;


 int DOMID_FIRST_RESERVED ;
 int MCLBYTES ;
 int M_TRAILINGSPACE (struct mbuf*) ;
 struct netif_tx_request* RING_GET_REQUEST (TYPE_7__*,int ) ;
 int RING_PUSH_REQUESTS (TYPE_7__*) ;
 int XNB_ASSERT (int) ;
 int m_freem (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 scalar_t__ virt_to_offset (int ) ;
 int vm_offset_t ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_5__*,int ) ;
 int xnb_txpkt2gnttab (struct xnb_pkt*,struct mbuf*,TYPE_4__*,TYPE_5__*,int ) ;
 TYPE_3__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_txpkt2gnttab_2cluster(char *buffer, size_t buflen)
{
 int n_entries;
 struct xnb_pkt pkt;
 struct mbuf *pMbuf;
 const uint16_t data_this_transaction = (MCLBYTES*2) + 1;

 struct netif_tx_request *req = RING_GET_REQUEST(&xnb_unit_pvt.txf,
     xnb_unit_pvt.txf.req_prod_pvt);
 req->flags = 0;
 req->size = data_this_transaction;
 req->gref = 8;
 req->offset = 0;
 xnb_unit_pvt.txf.req_prod_pvt++;

 RING_PUSH_REQUESTS(&xnb_unit_pvt.txf);
 xnb_ring2pkt(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);

 pMbuf = xnb_pkt2mbufc(&pkt, xnb_unit_pvt.ifp);
 XNB_ASSERT(pMbuf != ((void*)0));
 if (pMbuf == ((void*)0))
  return;

 n_entries = xnb_txpkt2gnttab(&pkt, pMbuf, xnb_unit_pvt.gnttab,
     &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);

 if (M_TRAILINGSPACE(pMbuf) == MCLBYTES) {

  XNB_ASSERT(n_entries == 3);
  XNB_ASSERT(xnb_unit_pvt.gnttab[0].len == MCLBYTES);
  XNB_ASSERT(
      xnb_unit_pvt.gnttab[0].dest.offset == virt_to_offset(
        mtod(pMbuf, vm_offset_t)));
  XNB_ASSERT(xnb_unit_pvt.gnttab[0].source.offset == 0);

  XNB_ASSERT(xnb_unit_pvt.gnttab[1].len == MCLBYTES);
  XNB_ASSERT(
      xnb_unit_pvt.gnttab[1].dest.offset == virt_to_offset(
        mtod(pMbuf->m_next, vm_offset_t)));
  XNB_ASSERT(xnb_unit_pvt.gnttab[1].source.offset == MCLBYTES);

  XNB_ASSERT(xnb_unit_pvt.gnttab[2].len == 1);
  XNB_ASSERT(
      xnb_unit_pvt.gnttab[2].dest.offset == virt_to_offset(
        mtod(pMbuf->m_next, vm_offset_t)));
  XNB_ASSERT(xnb_unit_pvt.gnttab[2].source.offset == 2 *
       MCLBYTES);
 } else if (M_TRAILINGSPACE(pMbuf) == 2 * MCLBYTES) {

  XNB_ASSERT(n_entries == 2);
  XNB_ASSERT(xnb_unit_pvt.gnttab[0].len == 2 * MCLBYTES);
  XNB_ASSERT(
      xnb_unit_pvt.gnttab[0].dest.offset == virt_to_offset(
        mtod(pMbuf, vm_offset_t)));
  XNB_ASSERT(xnb_unit_pvt.gnttab[0].source.offset == 0);

  XNB_ASSERT(xnb_unit_pvt.gnttab[1].len == 1);
  XNB_ASSERT(
      xnb_unit_pvt.gnttab[1].dest.offset == virt_to_offset(
        mtod(pMbuf->m_next, vm_offset_t)));
  XNB_ASSERT(
      xnb_unit_pvt.gnttab[1].source.offset == 2 * MCLBYTES);

 } else {

  XNB_ASSERT(0);
 }
 m_freem(pMbuf);
}
