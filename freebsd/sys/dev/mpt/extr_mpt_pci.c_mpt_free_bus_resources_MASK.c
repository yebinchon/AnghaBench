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
struct mpt_softc {int /*<<< orphan*/ * pci_reg; int /*<<< orphan*/  dev; int /*<<< orphan*/ * pci_pio_reg; int /*<<< orphan*/ * pci_irq; int /*<<< orphan*/ * ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mpt_softc *mpt)
{

	if (mpt->ih) {
		FUNC1(mpt->dev, mpt->pci_irq, mpt->ih);
		mpt->ih = NULL;
	}

	if (mpt->pci_irq) {
		FUNC0(mpt->dev, SYS_RES_IRQ,
		    FUNC3(mpt->pci_irq), mpt->pci_irq);
		FUNC2(mpt->dev);
		mpt->pci_irq = NULL;
	}

	if (mpt->pci_pio_reg) {
		FUNC0(mpt->dev, SYS_RES_IOPORT,
		    FUNC3(mpt->pci_pio_reg), mpt->pci_pio_reg);
		mpt->pci_pio_reg = NULL;
	}

	if (mpt->pci_reg) {
		FUNC0(mpt->dev, SYS_RES_MEMORY,
		    FUNC3(mpt->pci_reg), mpt->pci_reg);
		mpt->pci_reg = NULL;
	}
}