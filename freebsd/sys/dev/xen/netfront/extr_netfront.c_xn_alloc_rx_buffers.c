
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netif_rx_request {unsigned short id; scalar_t__ gref; } ;
struct TYPE_5__ {scalar_t__ req_prod_pvt; scalar_t__ rsp_cons; } ;
struct netfront_rxq {int xen_intr_handle; TYPE_2__ ring; int rx_refill; TYPE_1__* info; scalar_t__* grant_ref; int gref_head; struct mbuf** mbufs; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ grant_ref_t ;
struct TYPE_4__ {scalar_t__ carrier; int xbdev; } ;
typedef scalar_t__ RING_IDX ;


 scalar_t__ GNTTAB_LIST_END ;
 int KASSERT (int,char*) ;
 scalar_t__ NET_RX_RING_SIZE ;
 scalar_t__ NET_RX_SLOTS_MIN ;
 struct netif_rx_request* RING_GET_REQUEST (TYPE_2__*,scalar_t__) ;
 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (TYPE_2__*,int) ;
 int XN_RX_LOCK_ASSERT (struct netfront_rxq*) ;
 scalar_t__ __predict_false (int) ;
 unsigned long atop (int ) ;
 int callout_reset_curcpu (int *,int,int ,struct netfront_rxq*) ;
 scalar_t__ gnttab_claim_grant_reference (int *) ;
 int gnttab_grant_foreign_access_ref (scalar_t__,int ,unsigned long,int ) ;
 int hz ;
 int mtod (struct mbuf*,int ) ;
 int vm_offset_t ;
 int vtophys (int ) ;
 int wmb () ;
 int xen_intr_signal (int ) ;
 int xenbus_get_otherend_id (int ) ;
 struct mbuf* xn_alloc_one_rx_buffer (struct netfront_rxq*) ;
 int xn_alloc_rx_buffers_callout ;
 unsigned short xn_rxidx (scalar_t__) ;

__attribute__((used)) static void
xn_alloc_rx_buffers(struct netfront_rxq *rxq)
{
 RING_IDX req_prod;
 int notify;

 XN_RX_LOCK_ASSERT(rxq);

 if (__predict_false(rxq->info->carrier == 0))
  return;

 for (req_prod = rxq->ring.req_prod_pvt;
      req_prod - rxq->ring.rsp_cons < NET_RX_RING_SIZE;
      req_prod++) {
  struct mbuf *m;
  unsigned short id;
  grant_ref_t ref;
  struct netif_rx_request *req;
  unsigned long pfn;

  m = xn_alloc_one_rx_buffer(rxq);
  if (m == ((void*)0))
   break;

  id = xn_rxidx(req_prod);

  KASSERT(rxq->mbufs[id] == ((void*)0), ("non-NULL xn_rx_chain"));
  rxq->mbufs[id] = m;

  ref = gnttab_claim_grant_reference(&rxq->gref_head);
  KASSERT(ref != GNTTAB_LIST_END,
      ("reserved grant references exhuasted"));
  rxq->grant_ref[id] = ref;

  pfn = atop(vtophys(mtod(m, vm_offset_t)));
  req = RING_GET_REQUEST(&rxq->ring, req_prod);

  gnttab_grant_foreign_access_ref(ref,
      xenbus_get_otherend_id(rxq->info->xbdev), pfn, 0);
  req->id = id;
  req->gref = ref;
 }

 rxq->ring.req_prod_pvt = req_prod;


 if (req_prod - rxq->ring.rsp_cons < NET_RX_SLOTS_MIN) {
  callout_reset_curcpu(&rxq->rx_refill, hz/10,
      xn_alloc_rx_buffers_callout, rxq);
  return;
 }

 wmb();

 RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(&rxq->ring, notify);
 if (notify)
  xen_intr_signal(rxq->xen_intr_handle);
}
