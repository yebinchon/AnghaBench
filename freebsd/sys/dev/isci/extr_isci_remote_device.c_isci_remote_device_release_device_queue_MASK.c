#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ISCI_REMOTE_DEVICE {TYPE_2__* domain; void* release_queued_ccb; int /*<<< orphan*/  queued_ccbs; } ;
typedef  scalar_t__ lun_id_t ;
struct TYPE_4__ {TYPE_1__* controller; } ;
struct TYPE_3__ {void* release_queued_ccbs; } ;

/* Variables and functions */
 scalar_t__ ISCI_MAX_LUN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,struct ISCI_REMOTE_DEVICE*) ; 
 int /*<<< orphan*/  FUNC2 (struct ISCI_REMOTE_DEVICE*,scalar_t__) ; 

void
FUNC3(
    struct ISCI_REMOTE_DEVICE *device)
{
	if (FUNC0(&device->queued_ccbs)) {
		lun_id_t lun;

		for (lun = 0; lun < ISCI_MAX_LUN; lun++)
			FUNC2(device, lun);
	} else {
		/*
		 * We cannot unfreeze the devq, because there are still
		 *  CCBs in our internal queue that need to be processed
		 *  first.  Mark this device, and the controller, so that
		 *  the first CCB in this device's internal queue will be
		 *  resubmitted after the current completion context
		 *  unwinds.
		 */
		device->release_queued_ccb = TRUE;
		device->domain->controller->release_queued_ccbs = TRUE;

		FUNC1(1, "ISCI", "schedule %p for release\n",
		    device);
	}
}