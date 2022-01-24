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
struct usb_bus {int /*<<< orphan*/  bus_roothold; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 struct usb_bus* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct usb_bus*) ; 
 scalar_t__ usb_no_boot_wait ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct usb_bus *bus = FUNC1(dev);

	FUNC0("\n");

	if (bus == NULL) {
		FUNC3(dev, "USB device has no ivars\n");
		return (ENXIO);
	}

#if USB_HAVE_ROOT_MOUNT_HOLD
	if (usb_no_boot_wait == 0) {
		/* delay vfs_mountroot until the bus is explored */
		bus->bus_roothold = root_mount_hold(device_get_nameunit(dev));
	}
#endif
	FUNC5(dev, bus);

	return (0);			/* return success */
}