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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ PCI_VENDOR_NETLOGIC ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t bus, device_t dev, int pin)
{
	int f, d;

	/*
	 * Validate requested pin number.
	 */
	if ((pin < 1) || (pin > 4))
		return (255);

	if (FUNC1(dev) == 0 &&
	    FUNC4(dev) == PCI_VENDOR_NETLOGIC) {
		f = FUNC2(dev);
		d = FUNC3(dev) % 8;

		/*
		 * For PCIe links, return link IRT, for other SoC devices
		 * get the IRT from its PCIe header
		 */
		if (d == 1)
			return (FUNC0(f));
		else
			return (255);	/* use intline, don't reroute */
	} else {
		/* Regular PCI devices */
		return (FUNC0(FUNC5(bus, dev)));
	}
}