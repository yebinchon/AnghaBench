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
struct usb_proc_msg {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {int /*<<< orphan*/ * bdev; struct usb_device** devices; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 size_t USB_ROOT_HUB_ADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct usb_proc_msg *pm)
{
	struct usb_bus *bus;
	struct usb_device *udev;
	device_t dev;

	bus = ((struct usb_bus_msg *)pm)->bus;
	udev = bus->devices[USB_ROOT_HUB_ADDR];
	dev = bus->bdev;
	/* clear the softc */
	FUNC3(dev, NULL);
	FUNC1(bus);

	/* detach children first */
	FUNC4(&Giant);
	FUNC2(dev);
	FUNC5(&Giant);

	/*
	 * Free USB device and all subdevices, if any.
	 */
	FUNC6(udev, 0);

	FUNC0(bus);
	/* clear bdev variable last */
	bus->bdev = NULL;
}