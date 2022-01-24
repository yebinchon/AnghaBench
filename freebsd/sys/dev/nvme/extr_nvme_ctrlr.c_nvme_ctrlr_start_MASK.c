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
typedef  int uint32_t ;
struct nvme_controller {int num_io_queues; int /*<<< orphan*/ * ioq; int /*<<< orphan*/  adminq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*) ; 
 scalar_t__ FUNC3 (struct nvme_controller*) ; 
 scalar_t__ FUNC4 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_controller*) ; 
 scalar_t__ FUNC6 (struct nvme_controller*) ; 
 scalar_t__ FUNC7 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 

__attribute__((used)) static void
FUNC11(void *ctrlr_arg, bool resetting)
{
	struct nvme_controller *ctrlr = ctrlr_arg;
	uint32_t old_num_io_queues;
	int i;

	/*
	 * Only reset adminq here when we are restarting the
	 *  controller after a reset.  During initialization,
	 *  we have already submitted admin commands to get
	 *  the number of I/O queues supported, so cannot reset
	 *  the adminq again here.
	 */
	if (resetting)
		FUNC9(&ctrlr->adminq);

	for (i = 0; i < ctrlr->num_io_queues; i++)
		FUNC9(&ctrlr->ioq[i]);

	FUNC0(&ctrlr->adminq);

	if (FUNC6(ctrlr) != 0) {
		FUNC5(ctrlr);
		return;
	}

	/*
	 * The number of qpairs are determined during controller initialization,
	 *  including using NVMe SET_FEATURES/NUMBER_OF_QUEUES to determine the
	 *  HW limit.  We call SET_FEATURES again here so that it gets called
	 *  after any reset for controllers that depend on the driver to
	 *  explicit specify how many queues it will use.  This value should
	 *  never change between resets, so panic if somehow that does happen.
	 */
	if (resetting) {
		old_num_io_queues = ctrlr->num_io_queues;
		if (FUNC7(ctrlr) != 0) {
			FUNC5(ctrlr);
			return;
		}

		if (old_num_io_queues != ctrlr->num_io_queues) {
			FUNC10("num_io_queues changed from %u to %u",
			      old_num_io_queues, ctrlr->num_io_queues);
		}
	}

	if (FUNC4(ctrlr) != 0) {
		FUNC5(ctrlr);
		return;
	}

	if (FUNC3(ctrlr) != 0) {
		FUNC5(ctrlr);
		return;
	}

	FUNC1(ctrlr);
	FUNC2(ctrlr);

	for (i = 0; i < ctrlr->num_io_queues; i++)
		FUNC8(&ctrlr->ioq[i]);
}