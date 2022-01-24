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
struct nvme_qpair {int dummy; } ;
struct nvme_controller {int num_io_queues; struct nvme_qpair* ioq; } ;
struct nvme_completion_poll_status {int /*<<< orphan*/  cpl; scalar_t__ done; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  nvme_completion_poll_cb ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,struct nvme_qpair*,int /*<<< orphan*/ ,struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*,struct nvme_qpair*,int /*<<< orphan*/ ,struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_controller*,char*) ; 

__attribute__((used)) static int
FUNC5(struct nvme_controller *ctrlr)
{
	struct nvme_completion_poll_status	status;
	struct nvme_qpair			*qpair;

	for (int i = 0; i < ctrlr->num_io_queues; i++) {
		qpair = &ctrlr->ioq[i];

		status.done = 0;
		FUNC3(ctrlr, qpair,
		    nvme_completion_poll_cb, &status);
		FUNC1(&status);
		if (FUNC0(&status.cpl)) {
			FUNC4(ctrlr, "nvme_destroy_io_sq failed!\n");
			return (ENXIO);
		}

		status.done = 0;
		FUNC2(ctrlr, qpair,
		    nvme_completion_poll_cb, &status);
		FUNC1(&status);
		if (FUNC0(&status.cpl)) {
			FUNC4(ctrlr, "nvme_destroy_io_cq failed!\n");
			return (ENXIO);
		}
	}

	return (0);
}