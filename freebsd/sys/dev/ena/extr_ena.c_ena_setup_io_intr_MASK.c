#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ena_adapter {int num_queues; TYPE_3__* irq_tbl; TYPE_2__* que; TYPE_1__* msix_entries; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int cpu; int /*<<< orphan*/  vector; TYPE_2__* data; int /*<<< orphan*/  handler; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int cpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int ENA_INFO ; 
 int ENA_IOQ ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  ENA_IRQNAME_SIZE ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ena_handle_msix ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct ena_adapter *adapter)
{
	static int last_bind_cpu = -1;
	int irq_idx;

	if (adapter->msix_entries == NULL)
		return (EINVAL);

	for (int i = 0; i < adapter->num_queues; i++) {
		irq_idx = FUNC2(i);

		FUNC5(adapter->irq_tbl[irq_idx].name, ENA_IRQNAME_SIZE,
		    "%s-TxRx-%d", FUNC3(adapter->pdev), i);
		adapter->irq_tbl[irq_idx].handler = ena_handle_msix;
		adapter->irq_tbl[irq_idx].data = &adapter->que[i];
		adapter->irq_tbl[irq_idx].vector =
		    adapter->msix_entries[irq_idx].vector;
		FUNC4(ENA_INFO | ENA_IOQ, "ena_setup_io_intr vector: %d\n",
		    adapter->msix_entries[irq_idx].vector);

		/*
		 * We want to bind rings to the corresponding cpu
		 * using something similar to the RSS round-robin technique.
		 */
		if (FUNC6(last_bind_cpu < 0))
			last_bind_cpu = FUNC0();
		adapter->que[i].cpu = adapter->irq_tbl[irq_idx].cpu =
		    last_bind_cpu;
		last_bind_cpu = FUNC1(last_bind_cpu);
	}

	return (0);
}