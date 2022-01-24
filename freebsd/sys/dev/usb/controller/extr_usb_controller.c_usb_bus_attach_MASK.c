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
typedef  scalar_t__ usb_error_t ;
struct usb_proc_msg {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {int usbrev; int hw_power_state; int /*<<< orphan*/  bdev; TYPE_2__** devices; TYPE_1__* methods; } ;
typedef  enum usb_dev_speed { ____Placeholder_usb_dev_speed } usb_dev_speed ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * hub; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_hw_power ) (struct usb_bus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 scalar_t__ USB_ERR_NOMEM ; 
 scalar_t__ USB_ERR_NO_ROOT_HUB ; 
 int USB_HW_POWER_BULK ; 
 int USB_HW_POWER_CONTROL ; 
 int USB_HW_POWER_INTERRUPT ; 
 int USB_HW_POWER_ISOC ; 
 int USB_HW_POWER_NON_ROOT_HUB ; 
 int /*<<< orphan*/  USB_IFACE_INDEX_ANY ; 
 int /*<<< orphan*/  USB_MODE_HOST ; 
#define  USB_REV_1_0 132 
#define  USB_REV_1_1 131 
#define  USB_REV_2_0 130 
#define  USB_REV_2_5 129 
#define  USB_REV_3_0 128 
 size_t USB_ROOT_HUB_ADDR ; 
 int USB_SPEED_FULL ; 
 int USB_SPEED_HIGH ; 
 int USB_SPEED_SUPER ; 
 int USB_SPEED_VARIABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*) ; 
 struct usb_device* FUNC6 (int /*<<< orphan*/ ,struct usb_bus*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_bus*) ; 
 scalar_t__ FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(struct usb_proc_msg *pm)
{
	struct usb_bus *bus;
	struct usb_device *child;
	device_t dev;
	usb_error_t err;
	enum usb_dev_speed speed;

	bus = ((struct usb_bus_msg *)pm)->bus;
	dev = bus->bdev;

	FUNC0("\n");

	switch (bus->usbrev) {
	case USB_REV_1_0:
		speed = USB_SPEED_FULL;
		FUNC3(bus->bdev, "12Mbps Full Speed USB v1.0\n");
		break;

	case USB_REV_1_1:
		speed = USB_SPEED_FULL;
		FUNC3(bus->bdev, "12Mbps Full Speed USB v1.1\n");
		break;

	case USB_REV_2_0:
		speed = USB_SPEED_HIGH;
		FUNC3(bus->bdev, "480Mbps High Speed USB v2.0\n");
		break;

	case USB_REV_2_5:
		speed = USB_SPEED_VARIABLE;
		FUNC3(bus->bdev, "480Mbps Wireless USB v2.5\n");
		break;

	case USB_REV_3_0:
		speed = USB_SPEED_SUPER;
		FUNC3(bus->bdev, "5.0Gbps Super Speed USB v3.0\n");
		break;

	default:
		FUNC3(bus->bdev, "Unsupported USB revision\n");
#if USB_HAVE_ROOT_MOUNT_HOLD
		usb_root_mount_rel(bus);
#endif
		return;
	}

	/* default power_mask value */
	bus->hw_power_state =
	  USB_HW_POWER_CONTROL |
	  USB_HW_POWER_BULK |
	  USB_HW_POWER_INTERRUPT |
	  USB_HW_POWER_ISOC |
	  USB_HW_POWER_NON_ROOT_HUB;

	FUNC2(bus);

	/* make sure power is set at least once */

	if (bus->methods->set_hw_power != NULL) {
		(bus->methods->set_hw_power) (bus);
	}

	/* allocate the Root USB device */

	child = FUNC6(bus->bdev, bus, NULL, 0, 0, 1,
	    speed, USB_MODE_HOST);
	if (child) {
		err = FUNC8(child,
		    USB_IFACE_INDEX_ANY);
		if (!err) {
			if ((bus->devices[USB_ROOT_HUB_ADDR] == NULL) ||
			    (bus->devices[USB_ROOT_HUB_ADDR]->hub == NULL)) {
				err = USB_ERR_NO_ROOT_HUB;
			}
		}
	} else {
		err = USB_ERR_NOMEM;
	}

	FUNC1(bus);

	if (err) {
		FUNC3(bus->bdev, "Root HUB problem, error=%s\n",
		    FUNC10(err));
#if USB_HAVE_ROOT_MOUNT_HOLD
		usb_root_mount_rel(bus);
#endif
	}

	/* set softc - we are ready */
	FUNC4(dev, bus);

	/* start watchdog */
	FUNC7(bus);
}