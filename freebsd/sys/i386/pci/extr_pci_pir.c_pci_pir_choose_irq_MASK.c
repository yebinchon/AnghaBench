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
struct pci_link {int pl_irqmask; int pl_id; } ;

/* Variables and functions */
 int NUM_ISA_INTERRUPTS ; 
 scalar_t__ FUNC0 (int) ; 
 int PCI_INVALID_IRQ ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__* pir_interrupt_weight ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(struct pci_link *pci_link, int irqmask)
{
	int i, irq, realmask;

	/* XXX: Need to have a #define of known bad IRQs to also mask out? */
	realmask = pci_link->pl_irqmask & irqmask;
	if (realmask == 0)
		return (PCI_INVALID_IRQ);

	/* Find IRQ with lowest weight. */
	irq = PCI_INVALID_IRQ;
	for (i = 0; i < NUM_ISA_INTERRUPTS; i++) {
		if (!(realmask & 1 << i))
			continue;
		if (irq == PCI_INVALID_IRQ ||
		    pir_interrupt_weight[i] < pir_interrupt_weight[irq])
			irq = i;
	}
	if (bootverbose && FUNC0(irq)) {
		FUNC2("$PIR: Found IRQ %d for link %#x from ", irq,
		    pci_link->pl_id);
		FUNC1(realmask);
		FUNC2("\n");
	}
	return (irq);
}