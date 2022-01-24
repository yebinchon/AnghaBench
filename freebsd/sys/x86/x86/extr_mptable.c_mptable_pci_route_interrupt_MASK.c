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
struct pci_route_interrupt_args {int irq; int vector; scalar_t__ bus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCI_INVALID_IRQ ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char,...) ; 
 int /*<<< orphan*/  mptable_pci_route_interrupt_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pci_route_interrupt_args*) ; 
 int pci0 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t pcib, device_t dev, int pin)
{
	struct pci_route_interrupt_args args;
	int slot;

	/* Like ACPI, pin numbers are 0-3, not 1-4. */
	pin--;
	FUNC0(pci0 != -1, ("do not know how to route PCI interrupts"));
	args.bus = FUNC3(dev) + pci0;
	slot = FUNC4(dev);

	/*
	 * PCI interrupt entries in the MP Table encode both the slot and
	 * pin into the IRQ with the pin being the two least significant
	 * bits, the slot being the next five bits, and the most significant
	 * bit being reserved.
	 */
	args.irq = slot << 2 | pin;
	args.vector = -1;
	FUNC2(mptable_pci_route_interrupt_handler, &args);
	if (args.vector < 0) {
		FUNC1(pcib, "unable to route slot %d INT%c\n", slot,
		    'A' + pin);
		return (PCI_INVALID_IRQ);
	}
	if (bootverbose)
		FUNC1(pcib, "slot %d INT%c routed to irq %d\n", slot,
		    'A' + pin, args.vector);
	return (args.vector);
}