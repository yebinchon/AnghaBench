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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ peer_suspended; } ;
struct usb_device {int /*<<< orphan*/  parent_dev; TYPE_1__ flags; int /*<<< orphan*/  address; int /*<<< orphan*/  port_no; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_USBDEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  rebooting ; 

__attribute__((used)) static void
FUNC7(struct usb_device *udev, device_t *ppdev,
    char **ppnpinfo, uint8_t flag)
{
	device_t dev;
	char *pnpinfo;
	int err;

	dev = *ppdev;
	if (dev) {
		/*
		 * NOTE: It is important to clear "*ppdev" before deleting
		 * the child due to some device methods being called late
		 * during the delete process !
		 */
		*ppdev = NULL;

		if (!rebooting) {
			FUNC4(dev, "at %s, port %d, addr %d "
			    "(disconnected)\n",
			    FUNC2(udev->parent_dev),
			    udev->port_no, udev->address);
		}

		if (FUNC3(dev)) {
			if (udev->flags.peer_suspended) {
				err = FUNC0(dev);
				if (err) {
					FUNC4(dev, "Resume failed\n");
				}
			}
		}
		/* detach and delete child */
		if (FUNC1(udev->parent_dev, dev)) {
			goto error;
		}
	}

	pnpinfo = *ppnpinfo;
	if (pnpinfo != NULL) {
		*ppnpinfo = NULL;
		FUNC5(pnpinfo, M_USBDEV);
	}
	return;

error:
	/* Detach is not allowed to fail in the USB world */
	FUNC6("usb_detach_device_sub: A USB driver would not detach\n");
}