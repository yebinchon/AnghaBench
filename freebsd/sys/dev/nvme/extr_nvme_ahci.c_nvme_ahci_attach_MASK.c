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
struct nvme_registers {int dummy; } ;
struct nvme_controller {int num_io_queues; int /*<<< orphan*/ * res; int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; scalar_t__ resource_id; void* tag; scalar_t__ msix_enabled; scalar_t__ rid; scalar_t__ bus_handle; struct nvme_registers* regs; int /*<<< orphan*/  bus_tag; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct nvme_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nvme_controller*,void**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_ctrlr_intx_handler ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_controller*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct nvme_controller*ctrlr = FUNC0(dev);
	int ret;

	/* Map MMIO registers */
	ctrlr->resource_id = 0;

	ctrlr->resource = FUNC1(dev, SYS_RES_MEMORY,
	    &ctrlr->resource_id, RF_ACTIVE);

	if(ctrlr->resource == NULL) {
		FUNC5(ctrlr, "unable to allocate mem resource\n");
		ret = ENOMEM;
		goto bad;
	}
	ctrlr->bus_tag = FUNC7(ctrlr->resource);
	ctrlr->bus_handle = FUNC6(ctrlr->resource);
	ctrlr->regs = (struct nvme_registers *)ctrlr->bus_handle;

	/* Allocate and setup IRQ */
	ctrlr->rid = 0;
	ctrlr->res = FUNC1(dev, SYS_RES_IRQ,
	    &ctrlr->rid, RF_SHAREABLE | RF_ACTIVE);

	if (ctrlr->res == NULL) {
		FUNC5(ctrlr, "unable to allocate shared IRQ\n");
		ret = ENOMEM;
		goto bad;
	}

	ctrlr->msix_enabled = 0;
	ctrlr->num_io_queues = 1;
	if (FUNC3(dev, ctrlr->res,
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, nvme_ctrlr_intx_handler,
	    ctrlr, &ctrlr->tag) != 0) {
		FUNC5(ctrlr, "unable to setup intx handler\n");
		ret = ENOMEM;
		goto bad;
	}
	ctrlr->tag = (void *)0x1;

	return FUNC4(dev);
bad:
	if (ctrlr->resource != NULL) {
		FUNC2(dev, SYS_RES_MEMORY,
		    ctrlr->resource_id, ctrlr->resource);
	}
	if (ctrlr->res)
		FUNC2(ctrlr->dev, SYS_RES_IRQ,
		    FUNC8(ctrlr->res), ctrlr->res);
	return (ret);
}