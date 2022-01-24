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
struct usb_proc_msg {int dummy; } ;
struct usb_device {TYPE_1__* hub; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {scalar_t__ no_explore; int driver_added_refcount; scalar_t__ do_probe; struct usb_device** devices; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* explore ) (struct usb_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*) ; 
 size_t USB_ROOT_HUB_ADDR ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_bus*) ; 

__attribute__((used)) static void
FUNC11(struct usb_proc_msg *pm)
{
	struct usb_bus *bus;
	struct usb_device *udev;

	bus = ((struct usb_bus_msg *)pm)->bus;
	udev = bus->devices[USB_ROOT_HUB_ADDR];

	if (bus->no_explore != 0)
		return;

	if (udev != NULL) {
		FUNC5(bus);
		FUNC7(udev);
		FUNC2(bus);
	}

	if (udev != NULL && udev->hub != NULL) {

		if (bus->do_probe) {
			bus->do_probe = 0;
			bus->driver_added_refcount++;
		}
		if (bus->driver_added_refcount == 0) {
			/* avoid zero, hence that is memory default */
			bus->driver_added_refcount = 1;
		}

#ifdef DDB
		/*
		 * The following three lines of code are only here to
		 * recover from DDB:
		 */
		usb_proc_rewakeup(USB_BUS_CONTROL_XFER_PROC(bus));
		usb_proc_rewakeup(USB_BUS_GIANT_PROC(bus));
		usb_proc_rewakeup(USB_BUS_NON_GIANT_ISOC_PROC(bus));
		usb_proc_rewakeup(USB_BUS_NON_GIANT_BULK_PROC(bus));
#endif

		FUNC5(bus);

#if USB_HAVE_POWERD
		/*
		 * First update the USB power state!
		 */
		usb_bus_powerd(bus);
#endif
		 /* Explore the Root USB HUB. */
		(udev->hub->explore) (udev);
		FUNC2(bus);
	}
#if USB_HAVE_ROOT_MOUNT_HOLD
	usb_root_mount_rel(bus);
#endif
}