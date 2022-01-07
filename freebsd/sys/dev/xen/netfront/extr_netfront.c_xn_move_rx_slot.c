
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int req_prod_pvt; } ;
struct netfront_rxq {TYPE_2__ ring; void** grant_ref; struct mbuf** mbufs; } ;
struct mbuf {int dummy; } ;
typedef void* grant_ref_t ;
struct TYPE_3__ {int id; void* gref; } ;


 int KASSERT (int ,char*) ;
 TYPE_1__* RING_GET_REQUEST (TYPE_2__*,int ) ;
 int xn_rxidx (int ) ;

__attribute__((used)) static void
xn_move_rx_slot(struct netfront_rxq *rxq, struct mbuf *m,
    grant_ref_t ref)
{
 int new = xn_rxidx(rxq->ring.req_prod_pvt);

 KASSERT(rxq->mbufs[new] == ((void*)0), ("mbufs != NULL"));
 rxq->mbufs[new] = m;
 rxq->grant_ref[new] = ref;
 RING_GET_REQUEST(&rxq->ring, rxq->ring.req_prod_pvt)->id = new;
 RING_GET_REQUEST(&rxq->ring, rxq->ring.req_prod_pvt)->gref = ref;
 rxq->ring.req_prod_pvt++;
}
