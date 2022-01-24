#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  scalar_t__ uint8_t ;
struct usb_interface {TYPE_2__* idesc; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct usb_device {TYPE_3__* bus; TYPE_1__ scratch; } ;
struct usb_attach_arg {struct usb_interface* iface; struct usb_device* device; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_6__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {scalar_t__ iInterface; } ;

/* Variables and functions */
 scalar_t__ USB_ERR_INVAL ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,char*,int) ; 
 scalar_t__ FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 scalar_t__ FUNC7 (struct usb_device*,int /*<<< orphan*/ *,char*,int,scalar_t__) ; 

void
FUNC8(device_t dev)
{
	struct usb_attach_arg *uaa;
	struct usb_device *udev;
	struct usb_interface *iface;
	char *temp_p;
	usb_error_t err;
	uint8_t do_unlock;

	if (dev == NULL) {
		/* should not happen */
		return;
	}
	uaa = FUNC0(dev);
	if (uaa == NULL) {
		/* can happen if called at the wrong time */
		return;
	}
	udev = uaa->device;
	iface = uaa->iface;

	if ((iface == NULL) ||
	    (iface->idesc == NULL) ||
	    (iface->idesc->iInterface == 0)) {
		err = USB_ERR_INVAL;
	} else {
		err = 0;
	}

	/* Protect scratch area */
	do_unlock = FUNC5(udev);

	temp_p = (char *)udev->scratch.data;

	if (err == 0) {
		/* try to get the interface string ! */
		err = FUNC7(udev, NULL, temp_p,
		    sizeof(udev->scratch.data),
		    iface->idesc->iInterface);
	}
	if (err != 0) {
		/* use default description */
		FUNC4(udev, temp_p,
		    sizeof(udev->scratch.data));
	}

	if (do_unlock)
		FUNC6(udev);

	FUNC3(dev, temp_p);
	FUNC2(dev, "<%s> on %s\n", temp_p,
	    FUNC1(udev->bus->bdev));
}