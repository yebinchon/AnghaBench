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
struct ena_irq {int /*<<< orphan*/  vector; int /*<<< orphan*/ * res; scalar_t__ requested; int /*<<< orphan*/  cookie; } ;
struct ena_adapter {int /*<<< orphan*/  pdev; struct ena_irq* irq_tbl; } ;

/* Variables and functions */
 int ENA_ADMQ ; 
 int ENA_INFO ; 
 size_t ENA_MGMNT_IRQ_IDX ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ena_adapter *adapter)
{
	struct ena_irq *irq;
	int rc;

	irq = &adapter->irq_tbl[ENA_MGMNT_IRQ_IDX];
	if (irq->requested) {
		FUNC3(ENA_INFO | ENA_ADMQ, "tear down irq: %d\n",
		    irq->vector);
		rc = FUNC1(adapter->pdev, irq->res, irq->cookie);
		if (FUNC4(rc != 0))
			FUNC2(adapter->pdev, "failed to tear "
			    "down irq: %d\n", irq->vector);
		irq->requested = 0;
	}

	if (irq->res != NULL) {
		FUNC3(ENA_INFO | ENA_ADMQ, "release resource irq: %d\n",
		    irq->vector);
		rc = FUNC0(adapter->pdev, SYS_RES_IRQ,
		    irq->vector, irq->res);
		irq->res = NULL;
		if (FUNC4(rc != 0))
			FUNC2(adapter->pdev, "dev has no parent while "
			    "releasing res for irq: %d\n", irq->vector);
	}
}