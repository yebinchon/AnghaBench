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
typedef  int phandle_t ;
typedef  int ofw_pci_intr_t ;
typedef  int /*<<< orphan*/  iparent ;
typedef  int /*<<< orphan*/  intr ;
typedef  int /*<<< orphan*/  icells ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int,char*,int*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child)
{
	ofw_pci_intr_t intr[2];
	phandle_t node, iparent;
	int isz, icells;

	node = FUNC4(child);

	if (node == -1) {
		/* Non-firmware enumerated child, use standard routing */
	
		intr[0] = FUNC6(child);
		return (FUNC2(FUNC3(dev), child, 
		    intr[0]));
	}
	
	/*
	 * Try to determine the node's interrupt parent so we know which
	 * PIC to use.
	 */

	iparent = -1;
	if (FUNC0(node, "interrupt-parent", &iparent,
	    sizeof(iparent)) < 0)
		iparent = -1;
	icells = 1;
	if (iparent != -1)
		FUNC0(FUNC1(iparent), "#interrupt-cells",
		    &icells, sizeof(icells));
	
	/*
	 * Any AAPL,interrupts property gets priority and is
	 * fully specified (i.e. does not need routing)
	 */

	isz = FUNC0(node, "AAPL,interrupts", intr, sizeof(intr));
	if (isz == sizeof(intr[0])*icells)
		return ((iparent == -1) ? intr[0] : FUNC5(dev,
		    iparent, icells, intr));

	isz = FUNC0(node, "interrupts", intr, sizeof(intr));
	if (isz == sizeof(intr[0])*icells) {
		if (iparent != -1)
			intr[0] = FUNC5(dev, iparent, icells, intr);
	} else {
		/* No property: our best guess is the intpin. */
		intr[0] = FUNC6(child);
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
	return (FUNC2(FUNC3(dev), child, intr[0]));
}