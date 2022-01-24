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
struct usb_bus {int dummy; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_bus* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * usb_devclass_ptr ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*,int) ; 

void
FUNC5(void)
{
	struct usb_bus *bus;
	devclass_t dc;
	device_t dev;
	int max;

	FUNC0(3, "\n");

	dc = usb_devclass_ptr;
	if (dc == NULL) {
		FUNC0(0, "no devclass\n");
		return;
	}
	/*
	 * Explore all USB buses in parallel.
	 */
	max = FUNC2(dc);
	while (max >= 0) {
		dev = FUNC1(dc, max);
		if (dev) {
			bus = FUNC3(dev);
			if (bus) {
				FUNC4(bus, 1);
			}
		}
		max--;
	}
}