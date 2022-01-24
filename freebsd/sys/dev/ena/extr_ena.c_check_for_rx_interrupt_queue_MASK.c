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
struct ena_ring {int first_interrupt; scalar_t__ no_interrupt_event_cnt; int /*<<< orphan*/  qid; int /*<<< orphan*/  ena_com_io_cq; } ;
struct ena_adapter {int /*<<< orphan*/  reset_reason; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 scalar_t__ ENA_MAX_NO_INTERRUPT_ITERATIONS ; 
 int /*<<< orphan*/  ENA_REGS_RESET_MISS_INTERRUPT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct ena_adapter *adapter,
    struct ena_ring *rx_ring)
{
	if (FUNC4(rx_ring->first_interrupt))
		return (0);

	if (FUNC3(rx_ring->ena_com_io_cq))
		return (0);

	rx_ring->no_interrupt_event_cnt++;

	if (rx_ring->no_interrupt_event_cnt == ENA_MAX_NO_INTERRUPT_ITERATIONS) {
		FUNC2(adapter->pdev, "Potential MSIX issue on Rx side "
		    "Queue = %d. Reset the device\n", rx_ring->qid);
		if (FUNC4(!FUNC0(ENA_FLAG_TRIGGER_RESET, adapter))) {
			adapter->reset_reason = ENA_REGS_RESET_MISS_INTERRUPT;
			FUNC1(ENA_FLAG_TRIGGER_RESET, adapter);
		}
		return (EIO);
	}

	return (0);
}