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
struct nvme_controller {int num_io_queues; int /*<<< orphan*/  lock; int /*<<< orphan*/ * resource; int /*<<< orphan*/  resource_id; int /*<<< orphan*/ * bar4_resource; int /*<<< orphan*/  bar4_resource_id; int /*<<< orphan*/ * res; int /*<<< orphan*/  dev; scalar_t__ tag; scalar_t__ taskqueue; int /*<<< orphan*/  adminq; int /*<<< orphan*/ * ioq; scalar_t__ is_initialized; scalar_t__ cdev; int /*<<< orphan*/ * ns; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NVME ; 
 int NVME_MAX_NAMESPACES ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  csts ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct nvme_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

void
FUNC16(struct nvme_controller *ctrlr, device_t dev)
{
	int	gone, i;

	if (ctrlr->resource == NULL)
		goto nores;

	/*
	 * Check whether it is a hot unplug or a clean driver detach.
	 * If device is not there any more, skip any shutdown commands.
	 */
	gone = (FUNC11(ctrlr, csts) == 0xffffffff);
	if (gone)
		FUNC8(ctrlr);
	else
		FUNC12(ctrlr);

	for (i = 0; i < NVME_MAX_NAMESPACES; i++)
		FUNC13(&ctrlr->ns[i]);

	if (ctrlr->cdev)
		FUNC2(ctrlr->cdev);

	if (ctrlr->is_initialized) {
		if (!gone)
			FUNC6(ctrlr);
		for (i = 0; i < ctrlr->num_io_queues; i++)
			FUNC10(&ctrlr->ioq[i]);
		FUNC3(ctrlr->ioq, M_NVME);
		FUNC5(&ctrlr->adminq);
	}

	/*
	 *  Notify the controller of a shutdown, even though this is due to
	 *   a driver unload, not a system shutdown (this path is not invoked
	 *   during shutdown).  This ensures the controller receives a
	 *   shutdown notification in case the system is shutdown before
	 *   reloading the driver.
	 */
	if (!gone)
		FUNC9(ctrlr);

	if (!gone)
		FUNC7(ctrlr);

	if (ctrlr->taskqueue)
		FUNC15(ctrlr->taskqueue);

	if (ctrlr->tag)
		FUNC1(ctrlr->dev, ctrlr->res, ctrlr->tag);

	if (ctrlr->res)
		FUNC0(ctrlr->dev, SYS_RES_IRQ,
		    FUNC14(ctrlr->res), ctrlr->res);

	if (ctrlr->bar4_resource != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    ctrlr->bar4_resource_id, ctrlr->bar4_resource);
	}

	FUNC0(dev, SYS_RES_MEMORY,
	    ctrlr->resource_id, ctrlr->resource);

nores:
	FUNC4(&ctrlr->lock);
}