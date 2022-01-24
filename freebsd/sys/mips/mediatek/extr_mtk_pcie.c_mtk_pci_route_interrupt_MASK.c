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
 int MTK_PCIE0_IRQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t pcib, device_t device, int pin)
{
	int bus, sl, dev;

	bus = FUNC1(device);
	sl = FUNC3(device);
	dev = FUNC2(device);

	if (bus != 0)
		FUNC0("Unexpected bus number %d\n", bus);

	/* PCIe only */
	switch (sl) {
	case 0: return MTK_PCIE0_IRQ;
	case 1: return MTK_PCIE0_IRQ + 1;
	case 2: return MTK_PCIE0_IRQ + 2;
	default: return (-1);
	}

	return (-1);
}