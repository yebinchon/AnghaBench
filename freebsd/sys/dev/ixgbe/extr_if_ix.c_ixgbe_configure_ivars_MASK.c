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
typedef  int u32 ;
struct tx_ring {int me; } ;
struct rx_ring {int me; } ;
struct ix_tx_queue {int /*<<< orphan*/  msix; struct tx_ring txr; } ;
struct ix_rx_queue {int /*<<< orphan*/  msix; struct rx_ring rxr; } ;
struct adapter {int num_rx_queues; int num_tx_queues; int /*<<< orphan*/  vector; int /*<<< orphan*/  hw; scalar_t__ dmac; struct ix_tx_queue* tx_queues; struct ix_rx_queue* rx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int ixgbe_max_interrupt_rate ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct adapter *adapter)
{
	struct ix_rx_queue *rx_que = adapter->rx_queues;
	struct ix_tx_queue *tx_que = adapter->tx_queues;
	u32                newitr;

	if (ixgbe_max_interrupt_rate > 0)
		newitr = (4000000 / ixgbe_max_interrupt_rate) & 0x0FF8;
	else {
		/*
		 * Disable DMA coalescing if interrupt moderation is
		 * disabled.
		 */
		adapter->dmac = 0;
		newitr = 0;
	}

	for (int i = 0; i < adapter->num_rx_queues; i++, rx_que++) {
		struct rx_ring *rxr = &rx_que->rxr;

		/* First the RX queue entry */
		FUNC2(adapter, rxr->me, rx_que->msix, 0);

		/* Set an Initial EITR value */
		FUNC1(&adapter->hw, FUNC0(rx_que->msix), newitr);
	}
	for (int i = 0; i < adapter->num_tx_queues; i++, tx_que++) {
		struct tx_ring *txr = &tx_que->txr;

		/* ... and the TX */
		FUNC2(adapter, txr->me, tx_que->msix, 1);
	}
	/* For the Link interrupt */
	FUNC2(adapter, 1, adapter->vector, -1);
}