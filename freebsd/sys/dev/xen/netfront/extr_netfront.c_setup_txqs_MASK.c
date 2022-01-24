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
typedef  scalar_t__ u_long ;
struct TYPE_2__ {struct netfront_txq* sring; } ;
struct netfront_txq {int id; TYPE_1__ ring; int /*<<< orphan*/  gref_head; void* ring_ref; int /*<<< orphan*/  tq; int /*<<< orphan*/  br; int /*<<< orphan*/  xen_intr_handle; int /*<<< orphan*/  name; int /*<<< orphan*/  defrtask; int /*<<< orphan*/  lock; void** mbufs; void** grant_ref; struct netfront_info* info; } ;
struct netfront_info {struct netfront_txq* txq; } ;
typedef  int /*<<< orphan*/  netif_tx_sring_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 void* GRANT_REF_INVALID ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NET_TX_RING_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netfront_txq*) ; 
 int /*<<< orphan*/  XN_QUEUE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC9 (struct netfront_txq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct netfront_txq* FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netfront_txq*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  xn_intr ; 
 int /*<<< orphan*/  xn_txq_tq_deferred ; 

__attribute__((used)) static int
FUNC24(device_t dev, struct netfront_info *info,
	   unsigned long num_queues)
{
	int q, i;
	int error;
	netif_tx_sring_t *txs;
	struct netfront_txq *txq;

	info->txq = FUNC13(sizeof(struct netfront_txq) * num_queues,
	    M_DEVBUF, M_WAITOK|M_ZERO);

	for (q = 0; q < num_queues; q++) {
		txq = &info->txq[q];

		txq->id = q;
		txq->info = info;

		txq->ring_ref = GRANT_REF_INVALID;
		txq->ring.sring = NULL;

		FUNC15(txq->name, XN_QUEUE_NAME_LEN, "xntx_%u", q);

		FUNC14(&txq->lock, txq->name, "netfront transmit lock",
		    MTX_DEF);

		for (i = 0; i <= NET_TX_RING_SIZE; i++) {
			txq->mbufs[i] = (void *) ((u_long) i+1);
			txq->grant_ref[i] = GRANT_REF_INVALID;
		}
		txq->mbufs[NET_TX_RING_SIZE] = (void *)0;

		/* Start resources allocation. */

		if (FUNC10(NET_TX_RING_SIZE,
		    &txq->gref_head) != 0) {
			FUNC7(dev, "failed to allocate tx grant refs\n");
			error = ENOMEM;
			goto fail;
		}

		txs = (netif_tx_sring_t *)FUNC13(PAGE_SIZE, M_DEVBUF,
		    M_WAITOK|M_ZERO);
		FUNC1(txs);
		FUNC0(&txq->ring, txs, PAGE_SIZE);

		error = FUNC23(dev, FUNC20(txs),
		    &txq->ring_ref);
		if (error != 0) {
			FUNC7(dev, "failed to grant tx ring\n");
			goto fail_grant_ring;
		}

		txq->br = FUNC3(NET_TX_RING_SIZE, M_DEVBUF,
		    M_WAITOK, &txq->lock);
		FUNC2(&txq->defrtask, 0, xn_txq_tq_deferred, txq);

		txq->tq = FUNC16(txq->name, M_WAITOK,
		    taskqueue_thread_enqueue, &txq->tq);

		error = FUNC19(&txq->tq, 1, PI_NET,
		    "%s txq %d", FUNC6(dev), txq->id);
		if (error != 0) {
			FUNC7(dev, "failed to start tx taskq %d\n",
			    txq->id);
			goto fail_start_thread;
		}

		error = FUNC21(dev,
		    FUNC22(dev), /* filter */ NULL, xn_intr,
		    &info->txq[q], INTR_TYPE_NET | INTR_MPSAFE | INTR_ENTROPY,
		    &txq->xen_intr_handle);

		if (error != 0) {
			FUNC7(dev, "xen_intr_alloc_and_bind_local_port failed\n");
			goto fail_bind_port;
		}
	}

	return (0);

fail_bind_port:
	FUNC17(txq->tq);
fail_start_thread:
	FUNC4(txq->br, M_DEVBUF);
	FUNC18(txq->tq);
	FUNC11(txq->ring_ref, NULL);
fail_grant_ring:
	FUNC12(txq->gref_head);
	FUNC9(txq->ring.sring, M_DEVBUF);
fail:
	for (; q >= 0; q--) {
		FUNC8(&info->txq[q]);
		FUNC5(&info->txq[q]);
	}

	FUNC9(info->txq, M_DEVBUF);
	return (error);
}