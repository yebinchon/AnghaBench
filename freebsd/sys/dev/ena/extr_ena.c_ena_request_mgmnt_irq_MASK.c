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
struct ena_irq {int requested; int /*<<< orphan*/ * res; int /*<<< orphan*/  vector; int /*<<< orphan*/  cookie; int /*<<< orphan*/  data; } ;
struct ena_adapter {int /*<<< orphan*/  pdev; struct ena_irq* irq_tbl; } ;

/* Variables and functions */
 int ENA_ADMQ ; 
 int ENA_INFO ; 
 size_t ENA_MGMNT_IRQ_IDX ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 unsigned long RF_ACTIVE ; 
 unsigned long RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ena_intr_msix_mgmnt ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct ena_adapter *adapter)
{
	struct ena_irq *irq;
	unsigned long flags;
	int rc, rcc;

	flags = RF_ACTIVE | RF_SHAREABLE;

	irq = &adapter->irq_tbl[ENA_MGMNT_IRQ_IDX];
	irq->res = FUNC0(adapter->pdev, SYS_RES_IRQ,
	    &irq->vector, flags);

	if (FUNC6(irq->res == NULL)) {
		FUNC3(adapter->pdev, "could not allocate "
		    "irq vector: %d\n", irq->vector);
		return (ENXIO);
	}

	rc = FUNC2(adapter->pdev, irq->res,
	    INTR_TYPE_NET | INTR_MPSAFE, NULL, ena_intr_msix_mgmnt,
	    irq->data, &irq->cookie);
	if (FUNC6(rc != 0)) {
		FUNC3(adapter->pdev, "failed to register "
		    "interrupt handler for irq %ju: %d\n",
		    FUNC5(irq->res), rc);
		goto err_res_free;
	}
	irq->requested = true;

	return (rc);

err_res_free:
	FUNC4(ENA_INFO | ENA_ADMQ, "releasing resource for irq %d\n",
	    irq->vector);
	rcc = FUNC1(adapter->pdev, SYS_RES_IRQ,
	    irq->vector, irq->res);
	if (FUNC6(rcc != 0))
		FUNC3(adapter->pdev, "dev has no parent while "
		    "releasing res for irq: %d\n", irq->vector);
	irq->res = NULL;

	return (rc);
}