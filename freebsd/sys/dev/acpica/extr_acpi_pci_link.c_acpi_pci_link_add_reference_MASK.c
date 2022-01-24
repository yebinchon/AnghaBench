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
typedef  int uint8_t ;
struct link {size_t l_irq; int l_bios_irq; int l_initial_irq; int /*<<< orphan*/  l_isa_irq; scalar_t__ l_routed; int /*<<< orphan*/  l_references; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t*) ; 
 int NUM_ISA_INTERRUPTS ; 
 int /*<<< orphan*/  PCIB_IVAR_BUS ; 
 scalar_t__ FUNC3 (int) ; 
 struct link* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (uintptr_t,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct link*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  pci_link ; 
 int pci_link_bios_isa_irqs ; 
 int /*<<< orphan*/ * pci_link_interrupt_weights ; 

void
FUNC9(device_t dev, int index, device_t pcib, int slot,
    int pin)
{
	struct link *link;
	uint8_t bios_irq;
	uintptr_t bus;

	/*
	 * Look up the PCI bus for the specified PCI bridge device.  Note
	 * that the PCI bridge device might not have any children yet.
	 * However, looking up its bus number doesn't require a valid child
	 * device, so we just pass NULL.
	 */
	if (FUNC2(pcib, NULL, PCIB_IVAR_BUS, &bus) != 0) {
		FUNC6(pcib, "Unable to read PCI bus number");
		FUNC8("PCI bridge without a bus number");
	}
		
	/* Bump the reference count. */
	FUNC0(pci_link);
	link = FUNC4(dev, index);
	if (link == NULL) {
		FUNC6(dev, "apparently invalid index %d\n", index);
		FUNC1(pci_link);
		return;
	}
	link->l_references++;
	if (link->l_routed)
		pci_link_interrupt_weights[link->l_irq]++;

	/*
	 * The BIOS only routes interrupts via ISA IRQs using the ATPICs
	 * (8259As).  Thus, if this link is routed via an ISA IRQ, go
	 * look to see if the BIOS routed an IRQ for this link at the
	 * indicated (bus, slot, pin).  If so, we prefer that IRQ for
	 * this link and add that IRQ to our list of known-good IRQs.
	 * This provides a good work-around for link devices whose _CRS
	 * method is either broken or bogus.  We only use the value
	 * returned by _CRS if we can't find a valid IRQ via this method
	 * in fact.
	 *
	 * If this link is not routed via an ISA IRQ (because we are using
	 * APIC for example), then don't bother looking up the BIOS IRQ
	 * as if we find one it won't be valid anyway.
	 */
	if (!link->l_isa_irq) {
		FUNC1(pci_link);
		return;
	}

	/* Try to find a BIOS IRQ setting from any matching devices. */
	bios_irq = FUNC5(bus, slot, pin);
	if (!FUNC3(bios_irq)) {
		FUNC1(pci_link);
		return;
	}

	/* Validate the BIOS IRQ. */
	if (!FUNC7(link, bios_irq)) {
		FUNC6(dev, "BIOS IRQ %u for %d.%d.INT%c is invalid\n",
		    bios_irq, (int)bus, slot, pin + 'A');
	} else if (!FUNC3(link->l_bios_irq)) {
		link->l_bios_irq = bios_irq;
		if (bios_irq < NUM_ISA_INTERRUPTS)
			pci_link_bios_isa_irqs |= (1 << bios_irq);
		if (bios_irq != link->l_initial_irq &&
		    FUNC3(link->l_initial_irq))
			FUNC6(dev,
			    "BIOS IRQ %u does not match initial IRQ %u\n",
			    bios_irq, link->l_initial_irq);
	} else if (bios_irq != link->l_bios_irq)
		FUNC6(dev,
	    "BIOS IRQ %u for %d.%d.INT%c does not match previous BIOS IRQ %u\n",
		    bios_irq, (int)bus, slot, pin + 'A',
		    link->l_bios_irq);
	FUNC1(pci_link);
}