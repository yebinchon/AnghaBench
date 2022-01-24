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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t pcib, device_t dev, int pin)
{
	int bus;
	int device;
	int func;
	/* struct gt_pci_softc *sc = device_get_softc(pcib); */
	bus = FUNC1(dev);
	device = FUNC3(dev);
	func = FUNC2(dev);
	/* 
	 * XXXMIPS: We need routing logic. This is just a stub .
	 */
	switch (device) {
	case 9: /*
		 * PIIX4 IDE adapter. HW IRQ0
		 */
		return 0;
	case 11: /* Ethernet */
		return 10;
	default:
		FUNC0(pcib, "no IRQ mapping for %d/%d/%d/%d\n", bus, device, func, pin);
		
	}
	return (0);

}