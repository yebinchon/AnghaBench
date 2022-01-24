#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_link_lookup {int bus; int device; int pin; struct pci_link** pci_link_ptr; } ;
struct pci_link {int pl_irq; scalar_t__ pl_irqmask; int pl_routed; } ;
struct TYPE_3__ {int /*<<< orphan*/  ph_pci_irqs; } ;
struct TYPE_4__ {TYPE_1__ pt_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTR_POLARITY_LOW ; 
 int /*<<< orphan*/  INTR_TRIGGER_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PCI_INVALID_IRQ ; 
 scalar_t__ bootverbose ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  pci_irq_override_mask ; 
 int FUNC4 (int,int,int,int,int) ; 
 int FUNC5 (struct pci_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_pir_find_link_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pci_link_lookup*) ; 
 TYPE_2__* pci_route_table ; 
 int /*<<< orphan*/  pir_bios_irqs ; 
 int /*<<< orphan*/ * pir_device ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int
FUNC9(int bus, int device, int func, int pin)
{
	struct pci_link_lookup lookup;
	struct pci_link *pci_link;
	int error, irq;

	if (pci_route_table == NULL)
		return (PCI_INVALID_IRQ);

	/* Lookup link device for this PCI device/pin. */
	pci_link = NULL;
	lookup.bus = bus;
	lookup.device = device;
	lookup.pin = pin - 1;
	lookup.pci_link_ptr = &pci_link;
	FUNC6(pci_pir_find_link_handler, &lookup);
	if (pci_link == NULL) {
		FUNC8("$PIR: No matching entry for %d.%d.INT%c\n", bus,
		    device, pin - 1 + 'A');
		return (PCI_INVALID_IRQ);
	}

	/*
	 * Pick a new interrupt if we don't have one already.  We look
	 * for an interrupt from several different sets.  First, if
	 * this link only has one valid IRQ, use that.  Second, we
	 * check the set of PCI only interrupts from the $PIR.  Third,
	 * we check the set of known-good interrupts that the BIOS has
	 * already used.  Lastly, we check the "all possible valid
	 * IRQs" set.
	 */
	if (!FUNC2(pci_link->pl_irq)) {
		if (pci_link->pl_irqmask != 0 && FUNC7(pci_link->pl_irqmask))
			irq = FUNC3(pci_link->pl_irqmask) - 1;
		else
			irq = FUNC5(pci_link,
			    pci_route_table->pt_header.ph_pci_irqs);
		if (!FUNC2(irq))
			irq = FUNC5(pci_link, pir_bios_irqs);
		if (!FUNC2(irq))
			irq = FUNC5(pci_link,
			    pci_irq_override_mask);
		if (!FUNC2(irq)) {
			if (bootverbose)
				FUNC8(
			"$PIR: Failed to route interrupt for %d:%d INT%c\n",
				    bus, device, pin - 1 + 'A');
			return (PCI_INVALID_IRQ);
		}
		pci_link->pl_irq = irq;
	}

	/* Ask the BIOS to route this IRQ if we haven't done so already. */
	if (!pci_link->pl_routed) {
		error = FUNC4(bus, device, func, pin - 1,
		    pci_link->pl_irq);

		/* Ignore errors when routing a unique interrupt. */
		if (error && !FUNC7(pci_link->pl_irqmask)) {
			FUNC8("$PIR: ROUTE_INTERRUPT failed.\n");
			return (PCI_INVALID_IRQ);
		}
		pci_link->pl_routed = 1;

		/* Ensure the interrupt is set to level/low trigger. */
		FUNC1(pir_device != NULL, ("missing pir device"));
		FUNC0(pir_device, pci_link->pl_irq,
		    INTR_TRIGGER_LEVEL, INTR_POLARITY_LOW);
	}
	if (bootverbose)
		FUNC8("$PIR: %d:%d INT%c routed to irq %d\n", bus, device,
		    pin - 1 + 'A', pci_link->pl_irq);
	return (pci_link->pl_irq);
}