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
struct tx_ring {struct em_tx_queue* tx_rsq; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct em_rx_queue {struct tx_ring txr; } ;
struct adapter {int tx_num_queues; struct em_tx_queue* mta; struct em_tx_queue* rx_queues; struct em_tx_queue* tx_queues; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct em_tx_queue*,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC2(ctx);
	struct em_tx_queue *tx_que = adapter->tx_queues;
	struct em_rx_queue *rx_que = adapter->rx_queues;

	if (tx_que != NULL) {
		for (int i = 0; i < adapter->tx_num_queues; i++, tx_que++) {
			struct tx_ring *txr = &tx_que->txr;
			if (txr->tx_rsq == NULL)
				break;

			FUNC1(txr->tx_rsq, M_DEVBUF);
			txr->tx_rsq = NULL;
		}
		FUNC1(adapter->tx_queues, M_DEVBUF);
		adapter->tx_queues = NULL;
	}

	if (rx_que != NULL) {
		FUNC1(adapter->rx_queues, M_DEVBUF);
		adapter->rx_queues = NULL;
	}

	FUNC0(adapter);

	if (adapter->mta != NULL) {
		FUNC1(adapter->mta, M_DEVBUF);
	}
}