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
struct usb_bus {int /*<<< orphan*/  bdev; int /*<<< orphan*/ * shutdown_msg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_bus* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ usb_no_shutdown_wait ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct usb_bus *bus = FUNC5(dev);

	FUNC0("\n");

	if (bus == NULL) {
		/* was never setup properly */
		return (0);
	}

	FUNC0("%s: Controller shutdown\n", FUNC4(bus->bdev));

	FUNC2(bus);
	FUNC6(FUNC1(bus),
	    &bus->shutdown_msg[0], &bus->shutdown_msg[1]);
	if (usb_no_shutdown_wait == 0) {
		/* wait for shutdown callback to be executed */
		FUNC7(FUNC1(bus),
		    &bus->shutdown_msg[0], &bus->shutdown_msg[1]);
	}
	FUNC3(bus);

	FUNC0("%s: Controller shutdown complete\n",
	    FUNC4(bus->bdev));

	return (0);
}