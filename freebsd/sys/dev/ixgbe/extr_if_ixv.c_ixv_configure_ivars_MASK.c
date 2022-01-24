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
struct ix_rx_queue {int /*<<< orphan*/  msix; } ;
struct adapter {scalar_t__ num_rx_queues; scalar_t__ num_tx_queues; int /*<<< orphan*/  vector; int /*<<< orphan*/  hw; struct ix_rx_queue* rx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EITR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct adapter *adapter)
{
	struct ix_rx_queue *que = adapter->rx_queues;

	FUNC2(adapter->num_rx_queues == adapter->num_tx_queues);

	for (int i = 0; i < adapter->num_rx_queues; i++, que++) {
		/* First the RX queue entry */
		FUNC3(adapter, i, que->msix, 0);
		/* ... and the TX */
		FUNC3(adapter, i, que->msix, 1);
		/* Set an initial value in EITR */
		FUNC1(&adapter->hw, FUNC0(que->msix),
		    IXGBE_EITR_DEFAULT);
	}

	/* For the mailbox interrupt */
	FUNC3(adapter, 1, adapter->vector, -1);
}