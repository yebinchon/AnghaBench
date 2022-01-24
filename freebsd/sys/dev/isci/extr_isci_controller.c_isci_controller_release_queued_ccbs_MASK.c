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
union ccb {int /*<<< orphan*/  csio; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct ccb_hdr {int dummy; } ;
struct ISCI_REMOTE_DEVICE {scalar_t__ release_queued_ccb; union ccb* queued_ccb_in_progress; int /*<<< orphan*/  queued_ccbs; } ;
struct ISCI_CONTROLLER {struct ISCI_REMOTE_DEVICE** remote_device; void* release_queued_ccbs; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SCI_MAX_REMOTE_DEVICES ; 
 struct ccb_hdr* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (union ccb*,struct ISCI_CONTROLLER*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,struct ccb_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct ISCI_CONTROLLER *controller)
{
	struct ISCI_REMOTE_DEVICE *dev;
	struct ccb_hdr *ccb_h;
	uint8_t *ptr;
	int dev_idx;

	FUNC0(FUNC4(&controller->lock), ("controller lock not owned"));

	controller->release_queued_ccbs = FALSE;
	for (dev_idx = 0;
	     dev_idx < SCI_MAX_REMOTE_DEVICES;
	     dev_idx++) {

		dev = controller->remote_device[dev_idx];
		if (dev != NULL &&
		    dev->release_queued_ccb == TRUE &&
		    dev->queued_ccb_in_progress == NULL) {
			dev->release_queued_ccb = FALSE;
			ccb_h = FUNC1(&dev->queued_ccbs);

			if (ccb_h == NULL)
				continue;

			ptr = FUNC5(&((union ccb *)ccb_h)->csio);
			FUNC3(1, "ISCI", "release %p %x\n", ccb_h, *ptr);

			dev->queued_ccb_in_progress = (union ccb *)ccb_h;
			FUNC2(
			    (union ccb *)ccb_h, controller);
		}
	}
}