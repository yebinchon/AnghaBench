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
struct nvme_controller {int is_initialized; int /*<<< orphan*/  config_hook; int /*<<< orphan*/  adminq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*) ; 
 scalar_t__ FUNC4 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_controller*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_controller*) ; 

void
FUNC9(void *arg)
{
	struct nvme_controller *ctrlr = arg;

	FUNC7(&ctrlr->adminq);
	FUNC1(&ctrlr->adminq);

	if (FUNC4(ctrlr) == 0 &&
	    FUNC2(ctrlr) == 0)
		FUNC5(ctrlr, false);
	else
		FUNC3(ctrlr);

	FUNC8(ctrlr);
	FUNC0(&ctrlr->config_hook);

	ctrlr->is_initialized = 1;
	FUNC6(ctrlr);
}