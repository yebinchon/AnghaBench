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
struct nvme_controller {int /*<<< orphan*/  is_resetting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_controller*) ; 
 int FUNC2 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_controller*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct nvme_controller	*ctrlr = arg;
	int			status;

	FUNC4(ctrlr, "resetting controller\n");
	status = FUNC2(ctrlr);
	/*
	 * Use pause instead of DELAY, so that we yield to any nvme interrupt
	 *  handlers on this CPU that were blocked on a qpair lock. We want
	 *  all nvme interrupts completed before proceeding with restarting the
	 *  controller.
	 *
	 * XXX - any way to guarantee the interrupt handlers have quiesced?
	 */
	FUNC5("nvmereset", hz / 10);
	if (status == 0)
		FUNC3(ctrlr, true);
	else
		FUNC1(ctrlr);

	FUNC0(&ctrlr->is_resetting, 1, 0);
}