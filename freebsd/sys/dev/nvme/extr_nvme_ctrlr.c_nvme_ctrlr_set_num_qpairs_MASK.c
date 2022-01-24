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
struct nvme_controller {int num_io_queues; } ;
struct TYPE_2__ {int cdw0; } ;
struct nvme_completion_poll_status {TYPE_1__ cpl; scalar_t__ done; } ;

/* Variables and functions */
 int ENXIO ; 
 void* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  nvme_completion_poll_cb ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*,int,int /*<<< orphan*/ ,struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_controller*,char*) ; 
 int vm_ndomains ; 

__attribute__((used)) static int
FUNC5(struct nvme_controller *ctrlr)
{
	struct nvme_completion_poll_status	status;
	int					cq_allocated, sq_allocated;

	status.done = 0;
	FUNC3(ctrlr, ctrlr->num_io_queues,
	    nvme_completion_poll_cb, &status);
	FUNC2(&status);
	if (FUNC1(&status.cpl)) {
		FUNC4(ctrlr, "nvme_ctrlr_set_num_qpairs failed!\n");
		return (ENXIO);
	}

	/*
	 * Data in cdw0 is 0-based.
	 * Lower 16-bits indicate number of submission queues allocated.
	 * Upper 16-bits indicate number of completion queues allocated.
	 */
	sq_allocated = (status.cpl.cdw0 & 0xFFFF) + 1;
	cq_allocated = (status.cpl.cdw0 >> 16) + 1;

	/*
	 * Controller may allocate more queues than we requested,
	 *  so use the minimum of the number requested and what was
	 *  actually allocated.
	 */
	ctrlr->num_io_queues = FUNC0(ctrlr->num_io_queues, sq_allocated);
	ctrlr->num_io_queues = FUNC0(ctrlr->num_io_queues, cq_allocated);
	if (ctrlr->num_io_queues > vm_ndomains)
		ctrlr->num_io_queues -= ctrlr->num_io_queues % vm_ndomains;

	return (0);
}