#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct netfront_rxq* sring; } ;
struct netfront_rxq {int id; TYPE_1__ ring; int /*<<< orphan*/  gref_head; int /*<<< orphan*/  rx_refill; void* ring_ref; void** grant_ref; int /*<<< orphan*/ ** mbufs; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; struct netfront_info* info; } ;
struct netfront_info {struct netfront_rxq* rxq; } ;
typedef  int /*<<< orphan*/  netif_rx_sring_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 void* GRANT_REF_INVALID ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NET_RX_RING_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XN_QUEUE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_rxq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct netfront_rxq* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static int
FUNC14(device_t dev, struct netfront_info *info,
	   unsigned long num_queues)
{
	int q, i;
	int error;
	netif_rx_sring_t *rxs;
	struct netfront_rxq *rxq;

	info->rxq = FUNC9(sizeof(struct netfront_rxq) * num_queues,
	    M_DEVBUF, M_WAITOK|M_ZERO);

	for (q = 0; q < num_queues; q++) {
		rxq = &info->rxq[q];

		rxq->id = q;
		rxq->info = info;
		rxq->ring_ref = GRANT_REF_INVALID;
		rxq->ring.sring = NULL;
		FUNC11(rxq->name, XN_QUEUE_NAME_LEN, "xnrx_%u", q);
		FUNC10(&rxq->lock, rxq->name, "netfront receive lock",
		    MTX_DEF);

		for (i = 0; i <= NET_RX_RING_SIZE; i++) {
			rxq->mbufs[i] = NULL;
			rxq->grant_ref[i] = GRANT_REF_INVALID;
		}

		/* Start resources allocation */

		if (FUNC7(NET_RX_RING_SIZE,
		    &rxq->gref_head) != 0) {
			FUNC4(dev, "allocating rx gref");
			error = ENOMEM;
			goto fail;
		}

		rxs = (netif_rx_sring_t *)FUNC9(PAGE_SIZE, M_DEVBUF,
		    M_WAITOK|M_ZERO);
		FUNC1(rxs);
		FUNC0(&rxq->ring, rxs, PAGE_SIZE);

		error = FUNC13(dev, FUNC12(rxs),
		    &rxq->ring_ref);
		if (error != 0) {
			FUNC4(dev, "granting rx ring page");
			goto fail_grant_ring;
		}

		FUNC2(&rxq->rx_refill, 1);
	}

	return (0);

fail_grant_ring:
	FUNC8(rxq->gref_head);
	FUNC6(rxq->ring.sring, M_DEVBUF);
fail:
	for (; q >= 0; q--) {
		FUNC5(&info->rxq[q]);
		FUNC3(&info->rxq[q]);
	}

	FUNC6(info->rxq, M_DEVBUF);
	return (error);
}