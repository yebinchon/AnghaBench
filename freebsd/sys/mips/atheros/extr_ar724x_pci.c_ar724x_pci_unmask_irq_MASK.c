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
typedef  int uint32_t ;

/* Variables and functions */
 unsigned int AR71XX_PCI_IRQ_START ; 
 int AR724X_PCI_INTR_DEV0 ; 
 int /*<<< orphan*/  AR724X_PCI_INTR_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void 
FUNC2(void *source)
{
	uint32_t reg;
	unsigned int irq = (unsigned int)source;

	/* XXX */
	if (irq != AR71XX_PCI_IRQ_START)
		return;

	/* Update the interrupt mask reg */
	reg = FUNC0(AR724X_PCI_INTR_MASK);
	FUNC1(AR724X_PCI_INTR_MASK,
	    reg | AR724X_PCI_INTR_DEV0);
}