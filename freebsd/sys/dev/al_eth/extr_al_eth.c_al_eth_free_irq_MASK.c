#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct al_eth_irq {int /*<<< orphan*/  vector; int /*<<< orphan*/ * res; } ;
struct al_eth_adapter {int msix_vecs; int irq_vecs; int /*<<< orphan*/ * msix_entries; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; struct al_eth_irq* irq_tbl; TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rx_cpu_rmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  M_IFAL ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct al_eth_adapter *adapter)
{
	struct al_eth_irq *irq;
	int i, rc;
#ifdef CONFIG_RFS_ACCEL
	if (adapter->msix_vecs >= 1) {
		free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
		adapter->netdev->rx_cpu_rmap = NULL;
	}
#endif

	FUNC0(adapter);

	for (i = 0; i < adapter->irq_vecs; i++) {
		irq = &adapter->irq_tbl[i];
		if (irq->res == NULL)
			continue;
		FUNC3(adapter->dev, "release resource irq: %d\n",
		    irq->vector);
		rc = FUNC1(adapter->dev, SYS_RES_IRQ, irq->vector,
		    irq->res);
		irq->res = NULL;
		if (rc != 0)
			FUNC2(adapter->dev, "dev has no parent while "
			    "releasing res for irq: %d\n", irq->vector);
	}

	FUNC6(adapter->dev);

	adapter->flags &= ~AL_ETH_FLAG_MSIX_ENABLED;

	adapter->msix_vecs = 0;
	FUNC4(adapter->msix_entries, M_IFAL);
	adapter->msix_entries = NULL;
}