#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * intr_registered; int /*<<< orphan*/ * intrcookie; TYPE_4__* msi_ctx; int /*<<< orphan*/ ** pqi_irq; scalar_t__* pqi_irq_rid; int /*<<< orphan*/  pqi_dev; } ;
struct TYPE_8__ {TYPE_1__ os_specific; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqi_intr_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_9__ {int oq_id; int /*<<< orphan*/  pqi_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int PQI_STATUS_FAILURE ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  shared_ithread_routine ; 

int FUNC5(pqisrc_softstate_t *softs)
{
	int error = 0;
	device_t dev;

	FUNC1("IN\n");

	dev = softs->os_specific.pqi_dev;

	softs->os_specific.pqi_irq_rid[0] = 0;
	softs->os_specific.pqi_irq[0] = FUNC2(dev, \
		SYS_RES_IRQ, &softs->os_specific.pqi_irq_rid[0],
		RF_ACTIVE | RF_SHAREABLE);
	if (NULL == softs->os_specific.pqi_irq[0]) {
		FUNC0("Failed to allocate resource for interrupt\n");
		return PQI_STATUS_FAILURE; 
	}
	if ((softs->os_specific.msi_ctx = FUNC4(softs,sizeof(pqi_intr_ctx_t))) == NULL) {
		FUNC0("Failed to allocate memory for msi_ctx\n");
		return PQI_STATUS_FAILURE;
	}
	softs->os_specific.msi_ctx[0].pqi_dev = dev;
	softs->os_specific.msi_ctx[0].oq_id = 1;

	error = FUNC3(dev, softs->os_specific.pqi_irq[0],
				INTR_TYPE_CAM | INTR_MPSAFE, \
				NULL, shared_ithread_routine,
				&softs->os_specific.msi_ctx[0], 
				&softs->os_specific.intrcookie[0]);
	if (error) {
		FUNC0("Failed to setup legacy interrupt err = %d\n", error);
		return error;
	}
	softs->os_specific.intr_registered[0] = TRUE;

	FUNC1("OUT error = %d\n", error);

	return error;
}