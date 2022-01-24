#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_7__ {int req_prod_pvt; } ;
struct netfront_rxq {TYPE_4__ ring; TYPE_1__* info; int /*<<< orphan*/ * grant_ref; struct mbuf** mbufs; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {int id; int /*<<< orphan*/  gref; } ;
typedef  TYPE_2__ netif_rx_request_t ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_5__ {int /*<<< orphan*/  xbdev; } ;

/* Variables and functions */
 int NET_RX_RING_SIZE ; 
 int PAGE_SHIFT ; 
 TYPE_2__* FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_offset_t ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC5 (struct netfront_rxq*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_rxq*,int) ; 

__attribute__((used)) static void
FUNC7(struct netfront_rxq *rxq)
{
	int requeue_idx, i;
	grant_ref_t ref;
	netif_rx_request_t *req;

	for (requeue_idx = 0, i = 0; i < NET_RX_RING_SIZE; i++) {
		struct mbuf *m;
		u_long pfn;

		if (rxq->mbufs[i] == NULL)
			continue;

		m = rxq->mbufs[requeue_idx] = FUNC5(rxq, i);
		ref = rxq->grant_ref[requeue_idx] = FUNC6(rxq, i);

		req = FUNC0(&rxq->ring, requeue_idx);
		pfn = FUNC3(FUNC2(m, vm_offset_t)) >> PAGE_SHIFT;

		FUNC1(ref,
		    FUNC4(rxq->info->xbdev),
		    pfn, 0);

		req->gref = ref;
		req->id   = requeue_idx;

		requeue_idx++;
	}

	rxq->ring.req_prod_pvt = requeue_idx;
}