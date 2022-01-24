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
typedef  scalar_t__ uint8_t ;
struct usb_interface {int /*<<< orphan*/  pnpinfo; int /*<<< orphan*/  subdev; } ;
struct usb_device {int /*<<< orphan*/  enum_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_device*) ; 
 int /*<<< orphan*/  SA_LOCKED ; 
 scalar_t__ USB_IFACE_INDEX_ANY ; 
 scalar_t__ USB_IFACE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 struct usb_interface* FUNC3 (struct usb_device*,scalar_t__) ; 

void
FUNC4(struct usb_device *udev, uint8_t iface_index,
    uint8_t flag)
{
	struct usb_interface *iface;
	uint8_t i;

	if (udev == NULL) {
		/* nothing to do */
		return;
	}
	FUNC0(4, "udev=%p\n", udev);

	FUNC1(&udev->enum_sx, SA_LOCKED);

	/*
	 * First detach the child to give the child's detach routine a
	 * chance to detach the sub-devices in the correct order.
	 * Then delete the child using "device_delete_child()" which
	 * will detach all sub-devices from the bottom and upwards!
	 */
	if (iface_index != USB_IFACE_INDEX_ANY) {
		i = iface_index;
		iface_index = i + 1;
	} else {
		i = 0;
		iface_index = USB_IFACE_MAX;
	}

	/* do the detach */

	for (; i != iface_index; i++) {

		iface = FUNC3(udev, i);
		if (iface == NULL) {
			/* looks like the end of the USB interfaces */
			break;
		}
		FUNC2(udev, &iface->subdev,
		    &iface->pnpinfo, flag);
	}
}