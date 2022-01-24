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
struct usb_bus {int /*<<< orphan*/ * resume_msg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 struct usb_bus* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct usb_bus *bus = FUNC4(dev);

	FUNC0("\n");

	if (bus == NULL) {
		/* was never setup properly */
		return (0);
	}

	FUNC2(bus);
	FUNC5(FUNC1(bus),
	    &bus->resume_msg[0], &bus->resume_msg[1]);
	FUNC3(bus);

	return (0);
}