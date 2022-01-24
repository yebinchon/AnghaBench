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
struct ena_ring {int /*<<< orphan*/  ring_mtx; int /*<<< orphan*/  br; int /*<<< orphan*/  rx_stats; int /*<<< orphan*/  tx_stats; } ;
struct ena_adapter {struct ena_ring* rx_ring; struct ena_ring* tx_ring; } ;
typedef  int /*<<< orphan*/  counter_u64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_ring*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ena_adapter *adapter, unsigned int qid)
{
	struct ena_ring *txr = &adapter->tx_ring[qid];
	struct ena_ring *rxr = &adapter->rx_ring[qid];

	FUNC3((counter_u64_t *)&txr->tx_stats,
	    sizeof(txr->tx_stats));
	FUNC3((counter_u64_t *)&rxr->rx_stats,
	    sizeof(rxr->rx_stats));

	FUNC0(txr);
	FUNC2(txr->br, M_DEVBUF);
	FUNC1(txr);

	FUNC4(&txr->ring_mtx);
}