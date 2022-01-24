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
typedef  int ofw_pci_intr_t ;
typedef  int /*<<< orphan*/  intr ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child)
{
	ofw_pci_intr_t intr;
	int isz;

	isz = FUNC1(FUNC4(child), "interrupts", &intr,
	    sizeof(intr));
	if (isz != sizeof(intr)) {
		/* No property; our best guess is the intpin. */
		intr = FUNC5(child);
#ifndef SUN4V
	} else if (intr >= 255) {
		/*
		 * A fully specified interrupt (including IGN), as present on
		 * SPARCengine Ultra AX and E450.  Extract the INO and return
		 * it.
		 */
		return (FUNC0(intr));
#endif
	}
	/*
	 * If we got intr from a property, it may or may not be an intpin.
	 * For on-board devices, it frequently is not, and is completely out
	 * of the valid intpin range.  For PCI slots, it hopefully is,
	 * otherwise we will have trouble interfacing with non-OFW buses
	 * such as cardbus.
	 * Since we cannot tell which it is without violating layering, we
	 * will always use the route_interrupt method, and treat exceptions
	 * on the level they become apparent.
	 */
	return (FUNC2(FUNC3(dev), child, intr));
}