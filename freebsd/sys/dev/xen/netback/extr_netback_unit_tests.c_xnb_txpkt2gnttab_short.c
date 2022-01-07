
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct netif_tx_request {size_t size; int gref; int offset; scalar_t__ flags; } ;
struct mbuf {int dummy; } ;
struct TYPE_16__ {int req_prod_pvt; } ;
struct TYPE_15__ {int req_cons; } ;
struct TYPE_11__ {scalar_t__ gmfn; } ;
struct TYPE_12__ {scalar_t__ offset; scalar_t__ domid; TYPE_2__ u; } ;
struct TYPE_10__ {int offset; scalar_t__ domid; } ;
struct TYPE_14__ {size_t const len; int flags; TYPE_3__ dest; TYPE_1__ source; } ;
struct TYPE_13__ {TYPE_5__* gnttab; TYPE_6__ txb; int ifp; TYPE_8__ txf; } ;


 scalar_t__ DOMID_FIRST_RESERVED ;
 scalar_t__ DOMID_SELF ;
 int GNTCOPY_source_gref ;
 int MINCLSIZE ;
 struct netif_tx_request* RING_GET_REQUEST (TYPE_8__*,int ) ;
 int RING_PUSH_REQUESTS (TYPE_8__*) ;
 int XNB_ASSERT (int) ;
 int mtod (struct mbuf*,int ) ;
 int safe_m_freem (struct mbuf**) ;
 scalar_t__ virt_to_mfn (int ) ;
 scalar_t__ virt_to_offset (int ) ;
 int vm_offset_t ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_6__*,int ) ;
 int xnb_txpkt2gnttab (struct xnb_pkt*,struct mbuf*,TYPE_5__*,TYPE_6__*,scalar_t__) ;
 TYPE_4__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_txpkt2gnttab_short(char *buffer, size_t buflen)
{
 const size_t size = MINCLSIZE - 1;
 int n_entries;
 struct xnb_pkt pkt;
 struct mbuf *pMbuf;

 struct netif_tx_request *req = RING_GET_REQUEST(&xnb_unit_pvt.txf,
     xnb_unit_pvt.txf.req_prod_pvt);
 req->flags = 0;
 req->size = size;
 req->gref = 7;
 req->offset = 17;
 xnb_unit_pvt.txf.req_prod_pvt++;

 RING_PUSH_REQUESTS(&xnb_unit_pvt.txf);

 xnb_ring2pkt(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);

 pMbuf = xnb_pkt2mbufc(&pkt, xnb_unit_pvt.ifp);
 n_entries = xnb_txpkt2gnttab(&pkt, pMbuf, xnb_unit_pvt.gnttab,
     &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);
 XNB_ASSERT(n_entries == 1);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].len == size);

 XNB_ASSERT(xnb_unit_pvt.gnttab[0].flags & GNTCOPY_source_gref);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].source.offset == req->offset);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].source.domid == DOMID_SELF);
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].dest.offset == virt_to_offset(
       mtod(pMbuf, vm_offset_t)));
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].dest.u.gmfn ==
  virt_to_mfn(mtod(pMbuf, vm_offset_t)));
 XNB_ASSERT(xnb_unit_pvt.gnttab[0].dest.domid == DOMID_FIRST_RESERVED);
 safe_m_freem(&pMbuf);
}
