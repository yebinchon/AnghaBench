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
typedef  int uint8_t ;
struct usb_interface {scalar_t__ parent_iface_index; int /*<<< orphan*/ * subdev; } ;
struct TYPE_2__ {scalar_t__ peer_suspended; } ;
struct usb_device {TYPE_1__ flags; int /*<<< orphan*/ * parent_dev; } ;
struct usb_attach_arg {int /*<<< orphan*/ * temp_dev; struct usb_interface* iface; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_IFACE_INDEX_ANY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct usb_attach_arg*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static uint8_t
FUNC9(struct usb_device *udev,
    struct usb_attach_arg *uaa)
{
	struct usb_interface *iface;
	device_t dev;
	int err;

	iface = uaa->iface;
	if (iface->parent_iface_index != USB_IFACE_INDEX_ANY) {
		/* leave interface alone */
		return (0);
	}
	dev = iface->subdev;
	if (dev) {

		/* clean up after module unload */

		if (FUNC3(dev)) {
			/* already a device there */
			return (0);
		}
		/* clear "iface->subdev" as early as possible */

		iface->subdev = NULL;

		if (FUNC2(udev->parent_dev, dev)) {

			/*
			 * Panic here, else one can get a double call
			 * to device_detach().  USB devices should
			 * never fail on detach!
			 */
			FUNC8("device_delete_child() failed\n");
		}
	}
	if (uaa->temp_dev == NULL) {

		/* create a new child */
		uaa->temp_dev = FUNC1(udev->parent_dev, NULL, -1);
		if (uaa->temp_dev == NULL) {
			FUNC4(udev->parent_dev,
			    "Device creation failed\n");
			return (1);	/* failure */
		}
		FUNC7(uaa->temp_dev, uaa);
		FUNC6(uaa->temp_dev);
	}
	/*
	 * Set "subdev" before probe and attach so that "devd" gets
	 * the information it needs.
	 */
	iface->subdev = uaa->temp_dev;

	if (FUNC5(iface->subdev) == 0) {
		/*
		 * The USB attach arguments are only available during probe
		 * and attach !
		 */
		uaa->temp_dev = NULL;
		FUNC7(iface->subdev, NULL);

		if (udev->flags.peer_suspended) {
			err = FUNC0(iface->subdev);
			if (err)
				FUNC4(iface->subdev, "Suspend failed\n");
		}
		return (0);		/* success */
	} else {
		/* No USB driver found */
		iface->subdev = NULL;
	}
	return (1);			/* failure */
}