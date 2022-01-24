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
struct ix_rx_queue {int /*<<< orphan*/  que_irq; } ;
struct adapter {scalar_t__ intr_type; int num_rx_queues; int /*<<< orphan*/ * pci_mem; int /*<<< orphan*/  irq; struct ix_rx_queue* rx_queues; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ IFLIB_INTR_MSIX ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(if_ctx_t ctx)
{
	struct adapter     *adapter = FUNC2(ctx);
	struct ix_rx_queue *que = adapter->rx_queues;
	device_t           dev = FUNC1(ctx);

	/* Release all MSI-X queue resources */
	if (adapter->intr_type == IFLIB_INTR_MSIX)
		FUNC3(ctx, &adapter->irq);

	if (que != NULL) {
		for (int i = 0; i < adapter->num_rx_queues; i++, que++) {
			FUNC3(ctx, &que->que_irq);
		}
	}

	if (adapter->pci_mem != NULL)
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC4(adapter->pci_mem), adapter->pci_mem);
}