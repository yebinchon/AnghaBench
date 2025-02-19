
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct netif_tx_request {size_t size; int gref; int offset; scalar_t__ flags; } ;
struct TYPE_9__ {size_t const len; } ;
struct mbuf {size_t const m_len; TYPE_1__ m_pkthdr; } ;
struct TYPE_13__ {int req_prod_pvt; } ;
struct TYPE_12__ {int req_cons; } ;
struct TYPE_11__ {TYPE_2__* gnttab; TYPE_5__ txb; int ifp; TYPE_7__ txf; } ;
struct TYPE_10__ {int status; } ;


 int DOMID_FIRST_RESERVED ;
 int GNTST_okay ;
 int MINCLSIZE ;
 struct netif_tx_request* RING_GET_REQUEST (TYPE_7__*,int ) ;
 int RING_PUSH_REQUESTS (TYPE_7__*) ;
 int XNB_ASSERT (int) ;
 int safe_m_freem (struct mbuf**) ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_5__*,int ) ;
 int xnb_txpkt2gnttab (struct xnb_pkt*,struct mbuf*,TYPE_2__*,TYPE_5__*,int ) ;
 TYPE_3__ xnb_unit_pvt ;
 int xnb_update_mbufc (struct mbuf*,TYPE_2__*,int) ;

__attribute__((used)) static void
xnb_update_mbufc_short(char *buffer, size_t buflen)
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


 xnb_unit_pvt.gnttab[0].status = GNTST_okay;

 xnb_update_mbufc(pMbuf, xnb_unit_pvt.gnttab, n_entries);
 XNB_ASSERT(pMbuf->m_len == size);
 XNB_ASSERT(pMbuf->m_pkthdr.len == size);
 safe_m_freem(&pMbuf);
}
