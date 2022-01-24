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
struct nvme_controller {int num_io_queues; int /*<<< orphan*/ * tag; int /*<<< orphan*/ * res; int /*<<< orphan*/  dev; scalar_t__ rid; scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int ENOMEM ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nvme_controller*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  nvme_ctrlr_intx_handler ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,char*) ; 

__attribute__((used)) static int
FUNC3(struct nvme_controller *ctrlr)
{

	ctrlr->msix_enabled = 0;
	ctrlr->num_io_queues = 1;
	ctrlr->rid = 0;
	ctrlr->res = FUNC0(ctrlr->dev, SYS_RES_IRQ,
	    &ctrlr->rid, RF_SHAREABLE | RF_ACTIVE);

	if (ctrlr->res == NULL) {
		FUNC2(ctrlr, "unable to allocate shared IRQ\n");
		return (ENOMEM);
	}

	FUNC1(ctrlr->dev, ctrlr->res,
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, nvme_ctrlr_intx_handler,
	    ctrlr, &ctrlr->tag);

	if (ctrlr->tag == NULL) {
		FUNC2(ctrlr, "unable to setup intx handler\n");
		return (ENOMEM);
	}

	return (0);
}