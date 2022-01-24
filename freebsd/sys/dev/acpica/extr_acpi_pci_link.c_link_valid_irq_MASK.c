#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct link {int l_num_irqs; int* l_irqs; scalar_t__ l_isa_irq; } ;
struct TYPE_2__ {int SciInterrupt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ AcpiGbl_FADT ; 
 int FALSE ; 
 int NUM_ISA_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  pci_link ; 

__attribute__((used)) static int
FUNC2(struct link *link, int irq)
{
	int i;

	FUNC0(pci_link);

	/* Invalid interrupts are never valid. */
	if (!FUNC1(irq))
		return (FALSE);

	/* Any interrupt in the list of possible interrupts is valid. */
	for (i = 0; i < link->l_num_irqs; i++)
		if (link->l_irqs[i] == irq)
			 return (TRUE);

	/*
	 * For links routed via an ISA interrupt, if the SCI is routed via
	 * an ISA interrupt, the SCI is always treated as a valid IRQ.
	 */
	if (link->l_isa_irq && AcpiGbl_FADT.SciInterrupt == irq &&
	    irq < NUM_ISA_INTERRUPTS)
		return (TRUE);

	/* If the interrupt wasn't found in the list it is not valid. */
	return (FALSE);
}