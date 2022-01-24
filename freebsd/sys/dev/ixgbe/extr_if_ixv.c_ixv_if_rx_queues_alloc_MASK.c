#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  int /*<<< orphan*/  uint64_t ;
struct rx_ring {int me; struct ix_rx_queue* que; scalar_t__ bytes; int /*<<< orphan*/  rx_paddr; union ixgbe_adv_rx_desc* rx_base; int /*<<< orphan*/  tail; struct adapter* adapter; } ;
struct ix_rx_queue {struct adapter* adapter; struct rx_ring rxr; } ;
struct adapter {int num_rx_queues; struct ix_rx_queue* rx_queues; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs,
                       int nrxqs, int nrxqsets)
{
	struct adapter     *adapter = FUNC4(ctx);
	struct ix_rx_queue *que;
	int                i, error;

	FUNC1(adapter->num_rx_queues == nrxqsets);
	FUNC1(nrxqs == 1);

	/* Allocate queue structure memory */
	adapter->rx_queues =
	    (struct ix_rx_queue *)FUNC6(sizeof(struct ix_rx_queue) * nrxqsets,
	                                 M_DEVBUF, M_NOWAIT | M_ZERO);
	if (!adapter->rx_queues) {
		FUNC2(FUNC3(ctx),
		    "Unable to allocate TX ring memory\n");
		error = ENOMEM;
		goto fail;
	}

	for (i = 0, que = adapter->rx_queues; i < nrxqsets; i++, que++) {
		struct rx_ring *rxr = &que->rxr;
		rxr->me = i;
		rxr->adapter = que->adapter = adapter;


		/* get the virtual and physical address of the hw queues */
		rxr->tail = FUNC0(rxr->me);
		rxr->rx_base = (union ixgbe_adv_rx_desc *)vaddrs[i];
		rxr->rx_paddr = paddrs[i*nrxqs];
		rxr->bytes = 0;
		rxr->que = que;
	}

	FUNC2(FUNC3(ctx), "allocated for %d rx queues\n",
	    adapter->num_rx_queues);

	return (0);

fail:
	FUNC5(ctx);

	return (error);
}