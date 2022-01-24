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
typedef  int /*<<< orphan*/  uintmax_t ;
struct al_eth_irq {int requested; int /*<<< orphan*/ * res; int /*<<< orphan*/  vector; int /*<<< orphan*/  cookie; int /*<<< orphan*/  data; int /*<<< orphan*/  handler; } ;
struct al_eth_adapter {int flags; int irq_vecs; int /*<<< orphan*/  dev; struct al_eth_irq* irq_tbl; } ;

/* Variables and functions */
 int AL_ETH_FLAG_MSIX_ENABLED ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 unsigned long RF_ACTIVE ; 
 unsigned long RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct al_eth_adapter *adapter)
{
	unsigned long flags;
	struct al_eth_irq *irq;
	int rc = 0, i, v;

	if ((adapter->flags & AL_ETH_FLAG_MSIX_ENABLED) != 0)
		flags = RF_ACTIVE;
	else
		flags = RF_ACTIVE | RF_SHAREABLE;

	for (i = 0; i < adapter->irq_vecs; i++) {
		irq = &adapter->irq_tbl[i];

		if (irq->requested != 0)
			continue;

		irq->res = FUNC0(adapter->dev, SYS_RES_IRQ,
		    &irq->vector, flags);
		if (irq->res == NULL) {
			FUNC4(adapter->dev, "could not allocate "
			    "irq vector=%d\n", irq->vector);
			rc = ENXIO;
			goto exit_res;
		}

		if ((rc = FUNC2(adapter->dev, irq->res,
		    INTR_TYPE_NET | INTR_MPSAFE, irq->handler,
		    NULL, irq->data, &irq->cookie)) != 0) {
			FUNC4(adapter->dev, "failed to register "
			    "interrupt handler for irq %ju: %d\n",
			    (uintmax_t)FUNC6(irq->res), rc);
			goto exit_intr;
		}
		irq->requested = 1;
	}
	goto exit;

exit_intr:
	v = i - 1; /* -1 because we omit the operation that failed */
	while (v-- >= 0) {
		int bti;
		irq = &adapter->irq_tbl[v];
		bti = FUNC3(adapter->dev, irq->res, irq->cookie);
		if (bti != 0) {
			FUNC4(adapter->dev, "failed to tear "
			    "down irq: %d\n", irq->vector);
		}

		irq->requested = 0;
		FUNC5(adapter->dev, "exit_intr: releasing irq %d\n",
		    irq->vector);
	}

exit_res:
	v = i - 1; /* -1 because we omit the operation that failed */
	while (v-- >= 0) {
		int brr;
		irq = &adapter->irq_tbl[v];
		FUNC5(adapter->dev, "exit_res: releasing resource"
		    " for irq %d\n", irq->vector);
		brr = FUNC1(adapter->dev, SYS_RES_IRQ,
		    irq->vector, irq->res);
		if (brr != 0)
			FUNC4(adapter->dev, "dev has no parent while "
			    "releasing res for irq: %d\n", irq->vector);
		irq->res = NULL;
	}

exit:
	return (rc);
}