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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  scalar_t__ uint8_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct usb_device {scalar_t__ curr_config_index; int /*<<< orphan*/  parent_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bIfaceNum; scalar_t__ bIfaceIndex; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; int /*<<< orphan*/  bInterfaceClass; } ;
struct usb_attach_arg {scalar_t__ dev_state; int /*<<< orphan*/ * temp_dev; TYPE_2__ info; scalar_t__ driver_info; struct usb_interface* iface; } ;
struct TYPE_3__ {int /*<<< orphan*/  bInterfaceNumber; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; int /*<<< orphan*/  bInterfaceClass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct usb_device*,struct usb_attach_arg*) ; 
 scalar_t__ UAA_DEV_EJECTING ; 
 scalar_t__ UAA_DEV_READY ; 
 int /*<<< orphan*/  UQ_MSC_DYMO_EJECT ; 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 scalar_t__ USB_IFACE_INDEX_ANY ; 
 scalar_t__ USB_IFACE_MAX ; 
 scalar_t__ USB_UNCONFIG_INDEX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_dev_configured ; 
 scalar_t__ FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,struct usb_attach_arg*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,struct usb_attach_arg*) ; 
 scalar_t__ FUNC7 (struct usb_attach_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 struct usb_interface* FUNC11 (struct usb_device*,scalar_t__) ; 

usb_error_t
FUNC12(struct usb_device *udev, uint8_t iface_index)
{
	struct usb_attach_arg uaa;
	struct usb_interface *iface;
	uint8_t i;
	uint8_t j;
	uint8_t do_unlock;

	if (udev == NULL) {
		FUNC0("udev == NULL\n");
		return (USB_ERR_INVAL);
	}
	/* Prevent re-enumeration */
	do_unlock = FUNC9(udev);

	if (udev->curr_config_index == USB_UNCONFIG_INDEX) {
		/* do nothing - no configuration has been set */
		goto done;
	}
	/* setup USB attach arguments */

	FUNC5(udev, &uaa);

	/*
	 * If the whole USB device is targeted, invoke the USB event
	 * handler(s):
	 */
	if (iface_index == USB_IFACE_INDEX_ANY) {

		if (FUNC7(&uaa, UQ_MSC_DYMO_EJECT) != 0 &&
		    FUNC4(udev, 0) == 0) {
			/* success, mark the udev as disappearing */
			uaa.dev_state = UAA_DEV_EJECTING;
		}

		FUNC2(usb_dev_configured, udev, &uaa);

		if (uaa.dev_state != UAA_DEV_READY) {
			/* leave device unconfigured */
			FUNC8(udev, 0);
			goto done;
		}
	}

	/* Check if only one interface should be probed: */
	if (iface_index != USB_IFACE_INDEX_ANY) {
		i = iface_index;
		j = i + 1;
	} else {
		i = 0;
		j = USB_IFACE_MAX;
	}

	/* Do the probe and attach */
	for (; i != j; i++) {

		iface = FUNC11(udev, i);
		if (iface == NULL) {
			/*
			 * Looks like the end of the USB
			 * interfaces !
			 */
			FUNC1(2, "end of interfaces "
			    "at %u\n", i);
			break;
		}
		if (iface->idesc == NULL) {
			/* no interface descriptor */
			continue;
		}
		uaa.iface = iface;

		uaa.info.bInterfaceClass =
		    iface->idesc->bInterfaceClass;
		uaa.info.bInterfaceSubClass =
		    iface->idesc->bInterfaceSubClass;
		uaa.info.bInterfaceProtocol =
		    iface->idesc->bInterfaceProtocol;
		uaa.info.bIfaceIndex = i;
		uaa.info.bIfaceNum =
		    iface->idesc->bInterfaceNumber;
		uaa.driver_info = 0;	/* reset driver_info */

		FUNC1(2, "iclass=%u/%u/%u iindex=%u/%u\n",
		    uaa.info.bInterfaceClass,
		    uaa.info.bInterfaceSubClass,
		    uaa.info.bInterfaceProtocol,
		    uaa.info.bIfaceIndex,
		    uaa.info.bIfaceNum);

		FUNC6(udev, &uaa);

		/*
		 * Remove the leftover child, if any, to enforce that
		 * a new nomatch devd event is generated for the next
		 * interface if no driver is found:
		 */
		if (uaa.temp_dev == NULL)
			continue;
		if (FUNC3(udev->parent_dev, uaa.temp_dev))
			FUNC1(0, "device delete child failed\n");
		uaa.temp_dev = NULL;
	}
done:
	if (do_unlock)
		FUNC10(udev);
	return (0);
}