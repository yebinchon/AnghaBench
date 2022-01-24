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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_LEGSUP ; 
 int /*<<< orphan*/  PCI_LEGSUP_USBPIRQDEN ; 
 int PCI_UHCI_BASE_REG ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  UHCI_INTR ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(device_t self)
{
	struct resource *res;
	int rid;

	/*
	 * Set the PIRQD enable bit and switch off all the others. We don't
	 * want legacy support to interfere with us XXX Does this also mean
	 * that the BIOS won't touch the keyboard anymore if it is connected
	 * to the ports of the root hub?
	 */
	FUNC3(self, PCI_LEGSUP, PCI_LEGSUP_USBPIRQDEN, 2);

	/* Disable interrupts */
	rid = PCI_UHCI_BASE_REG;
	res = FUNC0(self, SYS_RES_IOPORT, &rid, RF_ACTIVE);
	if (res != NULL) {
		FUNC2(res, UHCI_INTR, 0);
		FUNC1(self, SYS_RES_IOPORT, rid, res);
	}
}