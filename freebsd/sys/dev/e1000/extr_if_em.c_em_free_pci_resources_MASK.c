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
struct em_rx_queue {int /*<<< orphan*/  que_irq; } ;
struct adapter {scalar_t__ intr_type; int rx_num_queues; int /*<<< orphan*/ * ioport; int /*<<< orphan*/ * flash; int /*<<< orphan*/ * memory; int /*<<< orphan*/  irq; struct em_rx_queue* rx_queues; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ IFLIB_INTR_MSIX ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC2(ctx);
	struct em_rx_queue *que = adapter->rx_queues;
	device_t dev = FUNC1(ctx);

	/* Release all MSI-X queue resources */
	if (adapter->intr_type == IFLIB_INTR_MSIX)
		FUNC3(ctx, &adapter->irq);

	for (int i = 0; i < adapter->rx_num_queues; i++, que++) {
		FUNC3(ctx, &que->que_irq);
	}

	if (adapter->memory != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC4(adapter->memory), adapter->memory);
		adapter->memory = NULL;
	}

	if (adapter->flash != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC4(adapter->flash), adapter->flash);
		adapter->flash = NULL;
	}

	if (adapter->ioport != NULL) {
		FUNC0(dev, SYS_RES_IOPORT,
		    FUNC4(adapter->ioport), adapter->ioport);
		adapter->ioport = NULL;
	}
}