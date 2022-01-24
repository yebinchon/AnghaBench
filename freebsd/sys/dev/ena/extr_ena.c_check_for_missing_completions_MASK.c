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
struct ena_ring {int dummy; } ;
struct ena_adapter {scalar_t__ missing_tx_timeout; int missing_tx_max_queues; int next_monitored_tx_qid; int num_queues; struct ena_ring* rx_ring; struct ena_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ; 
 int FUNC1 (struct ena_adapter*,struct ena_ring*) ; 
 int FUNC2 (struct ena_adapter*,struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ena_adapter *adapter)
{
	struct ena_ring *tx_ring;
	struct ena_ring *rx_ring;
	int i, budget, rc;

	/* Make sure the driver doesn't turn the device in other process */
	FUNC3();

	if (!FUNC0(ENA_FLAG_DEV_UP, adapter))
		return;

	if (FUNC0(ENA_FLAG_TRIGGER_RESET, adapter))
		return;

	if (adapter->missing_tx_timeout == ENA_HW_HINTS_NO_TIMEOUT)
		return;

	budget = adapter->missing_tx_max_queues;

	for (i = adapter->next_monitored_tx_qid; i < adapter->num_queues; i++) {
		tx_ring = &adapter->tx_ring[i];
		rx_ring = &adapter->rx_ring[i];

		rc = FUNC2(adapter, tx_ring);
		if (FUNC4(rc != 0))
			return;

		rc = FUNC1(adapter, rx_ring);
		if (FUNC4(rc != 0))
			return;

		budget--;
		if (budget == 0) {
			i++;
			break;
		}
	}

	adapter->next_monitored_tx_qid = i % adapter->num_queues;
}