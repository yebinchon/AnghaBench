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
struct nvme_controller {int /*<<< orphan*/  is_resetting; scalar_t__ is_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EWOULDBLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_controller*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int
FUNC7(struct nvme_controller *ctrlr)
{
	int to = hz;

	/*
	 * Can't touch failed controllers, so it's already suspended.
	 */
	if (ctrlr->is_failed)
		return (0);

	/*
	 * We don't want the reset taskqueue running, since it does similar
	 * things, so prevent it from running after we start. Wait for any reset
	 * that may have been started to complete. The reset process we follow
	 * will ensure that any new I/O will queue and be given to the hardware
	 * after we resume (though there should be none).
	 */
	while (FUNC1(&ctrlr->is_resetting, 0, 1) == 0 && to-- > 0)
		FUNC6("nvmesusp", 1);
	if (to <= 0) {
		FUNC5(ctrlr,
		    "Competing reset task didn't finish. Try again later.\n");
		return (EWOULDBLOCK);
	}

	/*
	 * Per Section 7.6.2 of NVMe spec 1.4, to properly suspend, we need to
	 * delete the hardware I/O queues, and then shutdown. This properly
	 * flushes any metadata the drive may have stored so it can survive
	 * having its power removed and prevents the unsafe shutdown count from
	 * incriminating. Once we delete the qpairs, we have to disable them
	 * before shutting down. The delay is out of paranoia in
	 * nvme_ctrlr_hw_reset, and is repeated here (though we should have no
	 * pending I/O that the delay copes with).
	 */
	FUNC2(ctrlr);
	FUNC3(ctrlr);
	FUNC0(100*1000);
	FUNC4(ctrlr);

	return (0);
}