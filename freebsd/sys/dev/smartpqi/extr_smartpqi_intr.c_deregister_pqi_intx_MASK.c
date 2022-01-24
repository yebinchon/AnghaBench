#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ msi_ctx; int /*<<< orphan*/ ** pqi_irq; int /*<<< orphan*/ * pqi_irq_rid; scalar_t__* intr_registered; int /*<<< orphan*/ * intrcookie; int /*<<< orphan*/  pqi_dev; } ;
struct TYPE_6__ {TYPE_1__ os_specific; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqi_intr_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 

void FUNC4(pqisrc_softstate_t *softs)
{
	device_t dev;

	FUNC0("IN\n");

	dev = softs->os_specific.pqi_dev;
	if (softs->os_specific.pqi_irq[0] != NULL) {
		if (softs->os_specific.intr_registered[0]) {
			FUNC2(dev, softs->os_specific.pqi_irq[0],
					softs->os_specific.intrcookie[0]);
			softs->os_specific.intr_registered[0] = FALSE;
		}
		FUNC1(dev, SYS_RES_IRQ,
			softs->os_specific.pqi_irq_rid[0],
			softs->os_specific.pqi_irq[0]);
		softs->os_specific.pqi_irq[0] = NULL;
		FUNC3(softs, (char*)softs->os_specific.msi_ctx, sizeof(pqi_intr_ctx_t));
	}

	FUNC0("OUT\n");
}