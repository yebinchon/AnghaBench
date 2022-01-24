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
struct nvme_controller {void* bar4_resource_id; int /*<<< orphan*/  dev; void* bar4_resource; scalar_t__ bus_handle; struct nvme_registers* regs; int /*<<< orphan*/ * resource; int /*<<< orphan*/  bus_tag; void* resource_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nvme_controller *ctrlr)
{

	ctrlr->resource_id = FUNC0(0);

	ctrlr->resource = FUNC1(ctrlr->dev, SYS_RES_MEMORY,
	    &ctrlr->resource_id, RF_ACTIVE);

	if(ctrlr->resource == NULL) {
		FUNC2(ctrlr, "unable to allocate pci resource\n");
		return (ENOMEM);
	}

	ctrlr->bus_tag = FUNC4(ctrlr->resource);
	ctrlr->bus_handle = FUNC3(ctrlr->resource);
	ctrlr->regs = (struct nvme_registers *)ctrlr->bus_handle;

	/*
	 * The NVMe spec allows for the MSI-X table to be placed behind
	 *  BAR 4/5, separate from the control/doorbell registers.  Always
	 *  try to map this bar, because it must be mapped prior to calling
	 *  pci_alloc_msix().  If the table isn't behind BAR 4/5,
	 *  bus_alloc_resource() will just return NULL which is OK.
	 */
	ctrlr->bar4_resource_id = FUNC0(4);
	ctrlr->bar4_resource = FUNC1(ctrlr->dev, SYS_RES_MEMORY,
	    &ctrlr->bar4_resource_id, RF_ACTIVE);

	return (0);
}