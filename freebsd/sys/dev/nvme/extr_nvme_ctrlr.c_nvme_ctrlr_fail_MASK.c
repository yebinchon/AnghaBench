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
struct nvme_controller {int num_io_queues; int /*<<< orphan*/ * ioq; int /*<<< orphan*/  adminq; int /*<<< orphan*/  is_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nvme_controller *ctrlr)
{
	int i;

	ctrlr->is_failed = TRUE;
	FUNC0(&ctrlr->adminq);
	FUNC3(&ctrlr->adminq);
	if (ctrlr->ioq != NULL) {
		for (i = 0; i < ctrlr->num_io_queues; i++) {
			FUNC1(&ctrlr->ioq[i]);
			FUNC3(&ctrlr->ioq[i]);
		}
	}
	FUNC2(ctrlr);
}