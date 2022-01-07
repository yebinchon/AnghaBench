
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int req_prod_pvt; } ;
struct netfront_rxq {TYPE_4__ ring; TYPE_1__* info; int * grant_ref; struct mbuf** mbufs; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {int id; int gref; } ;
typedef TYPE_2__ netif_rx_request_t ;
typedef int grant_ref_t ;
struct TYPE_5__ {int xbdev; } ;


 int NET_RX_RING_SIZE ;
 int PAGE_SHIFT ;
 TYPE_2__* RING_GET_REQUEST (TYPE_4__*,int) ;
 int gnttab_grant_foreign_access_ref (int ,int ,int,int ) ;
 int mtod (struct mbuf*,int ) ;
 int vm_offset_t ;
 int vtophys (int ) ;
 int xenbus_get_otherend_id (int ) ;
 struct mbuf* xn_get_rx_mbuf (struct netfront_rxq*,int) ;
 int xn_get_rx_ref (struct netfront_rxq*,int) ;

__attribute__((used)) static void
xn_rebuild_rx_bufs(struct netfront_rxq *rxq)
{
 int requeue_idx, i;
 grant_ref_t ref;
 netif_rx_request_t *req;

 for (requeue_idx = 0, i = 0; i < NET_RX_RING_SIZE; i++) {
  struct mbuf *m;
  u_long pfn;

  if (rxq->mbufs[i] == ((void*)0))
   continue;

  m = rxq->mbufs[requeue_idx] = xn_get_rx_mbuf(rxq, i);
  ref = rxq->grant_ref[requeue_idx] = xn_get_rx_ref(rxq, i);

  req = RING_GET_REQUEST(&rxq->ring, requeue_idx);
  pfn = vtophys(mtod(m, vm_offset_t)) >> PAGE_SHIFT;

  gnttab_grant_foreign_access_ref(ref,
      xenbus_get_otherend_id(rxq->info->xbdev),
      pfn, 0);

  req->gref = ref;
  req->id = requeue_idx;

  requeue_idx++;
 }

 rxq->ring.req_prod_pvt = requeue_idx;
}
