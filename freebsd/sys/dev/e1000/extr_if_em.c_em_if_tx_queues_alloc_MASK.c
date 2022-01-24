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
typedef  int /*<<< orphan*/  uint64_t ;
struct tx_ring {int me; int /*<<< orphan*/  tx_paddr; struct e1000_tx_desc* tx_base; int /*<<< orphan*/ * tx_rsq; struct adapter* adapter; } ;
struct em_tx_queue {int me; struct adapter* adapter; struct tx_ring txr; } ;
struct e1000_tx_desc {int dummy; } ;
struct adapter {int tx_num_queues; struct em_tx_queue* tx_queues; TYPE_1__* shared; } ;
typedef  int /*<<< orphan*/  qidx_t ;
typedef  TYPE_1__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int* isc_ntxd; } ;

/* Variables and functions */
 int E1000_SUCCESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  QIDX_INVALID ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs, int ntxqs, int ntxqsets)
{
	struct adapter *adapter = FUNC4(ctx);
	if_softc_ctx_t scctx = adapter->shared;
	int error = E1000_SUCCESS;
	struct em_tx_queue *que;
	int i, j;

	FUNC0(adapter->tx_num_queues > 0);
	FUNC0(adapter->tx_num_queues == ntxqsets);

	/* First allocate the top level queue structs */
	if (!(adapter->tx_queues =
	    (struct em_tx_queue *) FUNC5(sizeof(struct em_tx_queue) *
	    adapter->tx_num_queues, M_DEVBUF, M_NOWAIT | M_ZERO))) {
		FUNC1(FUNC3(ctx), "Unable to allocate queue memory\n");
		return(ENOMEM);
	}

	for (i = 0, que = adapter->tx_queues; i < adapter->tx_num_queues; i++, que++) {
		/* Set up some basics */

		struct tx_ring *txr = &que->txr;
		txr->adapter = que->adapter = adapter;
		que->me = txr->me =  i;

		/* Allocate report status array */
		if (!(txr->tx_rsq = (qidx_t *) FUNC5(sizeof(qidx_t) * scctx->isc_ntxd[0], M_DEVBUF, M_NOWAIT | M_ZERO))) {
			FUNC1(FUNC3(ctx), "failed to allocate rs_idxs memory\n");
			error = ENOMEM;
			goto fail;
		}
		for (j = 0; j < scctx->isc_ntxd[0]; j++)
			txr->tx_rsq[j] = QIDX_INVALID;
		/* get the virtual and physical address of the hardware queues */
		txr->tx_base = (struct e1000_tx_desc *)vaddrs[i*ntxqs];
		txr->tx_paddr = paddrs[i*ntxqs];
	}

	if (bootverbose)
		FUNC1(FUNC3(ctx),
		    "allocated for %d tx_queues\n", adapter->tx_num_queues);
	return (0);
fail:
	FUNC2(ctx);
	return (error);
}