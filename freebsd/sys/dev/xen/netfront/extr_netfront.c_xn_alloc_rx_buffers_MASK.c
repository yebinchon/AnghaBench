#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct netif_rx_request {unsigned short id; scalar_t__ gref; } ;
struct TYPE_5__ {scalar_t__ req_prod_pvt; scalar_t__ rsp_cons; } ;
struct netfront_rxq {int /*<<< orphan*/  xen_intr_handle; TYPE_2__ ring; int /*<<< orphan*/  rx_refill; TYPE_1__* info; scalar_t__* grant_ref; int /*<<< orphan*/  gref_head; struct mbuf** mbufs; } ;
struct mbuf {int dummy; } ;
typedef  scalar_t__ grant_ref_t ;
struct TYPE_4__ {scalar_t__ carrier; int /*<<< orphan*/  xbdev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 scalar_t__ GNTTAB_LIST_END ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NET_RX_RING_SIZE ; 
 scalar_t__ NET_RX_SLOTS_MIN ; 
 struct netif_rx_request* FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct netfront_rxq*) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct netfront_rxq*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_offset_t ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC14 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  xn_alloc_rx_buffers_callout ; 
 unsigned short FUNC15 (scalar_t__) ; 

__attribute__((used)) static void
FUNC16(struct netfront_rxq *rxq)
{
	RING_IDX req_prod;
	int notify;

	FUNC3(rxq);

	if (FUNC4(rxq->info->carrier == 0))
		return;

	for (req_prod = rxq->ring.req_prod_pvt;
	     req_prod - rxq->ring.rsp_cons < NET_RX_RING_SIZE;
	     req_prod++) {
		struct mbuf *m;
		unsigned short id;
		grant_ref_t ref;
		struct netif_rx_request *req;
		unsigned long pfn;

		m = FUNC14(rxq);
		if (m == NULL)
			break;

		id = FUNC15(req_prod);

		FUNC0(rxq->mbufs[id] == NULL, ("non-NULL xn_rx_chain"));
		rxq->mbufs[id] = m;

		ref = FUNC7(&rxq->gref_head);
		FUNC0(ref != GNTTAB_LIST_END,
		    ("reserved grant references exhuasted"));
		rxq->grant_ref[id] = ref;

		pfn = FUNC5(FUNC10(FUNC9(m, vm_offset_t)));
		req = FUNC1(&rxq->ring, req_prod);

		FUNC8(ref,
		    FUNC13(rxq->info->xbdev), pfn, 0);
		req->id = id;
		req->gref = ref;
	}

	rxq->ring.req_prod_pvt = req_prod;

	/* Not enough requests? Try again later. */
	if (req_prod - rxq->ring.rsp_cons < NET_RX_SLOTS_MIN) {
		FUNC6(&rxq->rx_refill, hz/10,
		    xn_alloc_rx_buffers_callout, rxq);
		return;
	}

	FUNC11();		/* barrier so backend seens requests */

	FUNC2(&rxq->ring, notify);
	if (notify)
		FUNC12(rxq->xen_intr_handle);
}