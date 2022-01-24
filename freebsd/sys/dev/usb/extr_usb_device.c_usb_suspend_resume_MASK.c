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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  scalar_t__ uint8_t ;
struct usb_interface {int /*<<< orphan*/  subdev; } ;
struct TYPE_2__ {scalar_t__ peer_suspended; } ;
struct usb_device {int /*<<< orphan*/  bus; TYPE_1__ flags; int /*<<< orphan*/  sr_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_device*,scalar_t__) ; 
 int /*<<< orphan*/  SA_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_IFACE_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct usb_interface* FUNC5 (struct usb_device*,scalar_t__) ; 

usb_error_t
FUNC6(struct usb_device *udev, uint8_t do_suspend)
{
	struct usb_interface *iface;
	uint8_t i;

	if (udev == NULL) {
		/* nothing to do */
		return (0);
	}
	FUNC0(4, "udev=%p do_suspend=%d\n", udev, do_suspend);

	FUNC3(&udev->sr_sx, SA_LOCKED);

	FUNC1(udev->bus);
	/* filter the suspend events */
	if (udev->flags.peer_suspended == do_suspend) {
		FUNC2(udev->bus);
		/* nothing to do */
		return (0);
	}
	udev->flags.peer_suspended = do_suspend;
	FUNC2(udev->bus);

	/* do the suspend or resume */

	for (i = 0; i != USB_IFACE_MAX; i++) {

		iface = FUNC5(udev, i);
		if (iface == NULL) {
			/* looks like the end of the USB interfaces */
			break;
		}
		FUNC4(udev, iface->subdev, do_suspend);
	}
	return (0);
}