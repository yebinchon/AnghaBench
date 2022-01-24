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
typedef  scalar_t__ usb_error_t ;
typedef  scalar_t__ uint8_t ;
struct usb_proc_msg {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {int no_explore; TYPE_1__* methods; scalar_t__ hw_power_state; int /*<<< orphan*/ * bdev; struct usb_device** devices; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_hw_power_sleep ) (struct usb_bus*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_hw_power ) (struct usb_bus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  USB_HW_POWER_SHUTDOWN ; 
 size_t USB_ROOT_HUB_ADDR ; 
 int /*<<< orphan*/  USB_UNCONFIG_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 scalar_t__ FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct usb_proc_msg *pm)
{
	struct usb_bus *bus;
	struct usb_device *udev;
	usb_error_t err;
	uint8_t do_unlock;

	bus = ((struct usb_bus_msg *)pm)->bus;
	udev = bus->devices[USB_ROOT_HUB_ADDR];

	if (udev == NULL || bus->bdev == NULL)
		return;

	FUNC1(bus);

	FUNC2(bus->bdev);

	do_unlock = FUNC6(udev);

	err = FUNC8(udev, USB_UNCONFIG_INDEX);
	if (err)
		FUNC3(bus->bdev, "Could not unconfigure root HUB\n");

	FUNC0(bus);
	bus->hw_power_state = 0;
	bus->no_explore = 1;
	FUNC1(bus);

	if (bus->methods->set_hw_power != NULL)
		(bus->methods->set_hw_power) (bus);

	if (bus->methods->set_hw_power_sleep != NULL)
		(bus->methods->set_hw_power_sleep) (bus, USB_HW_POWER_SHUTDOWN);

	if (do_unlock)
		FUNC7(udev);

	FUNC0(bus);
}