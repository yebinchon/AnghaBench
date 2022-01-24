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
struct intr_event {int /*<<< orphan*/  ie_handlers; } ;
struct ar71xx_pci_softc {int /*<<< orphan*/ * sc_intr_counter; struct intr_event** sc_eventstab; scalar_t__ sc_pci_ctrl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_CPU_DDR_FLUSH_PCIE ; 
 int AR71XX_PCI_IRQ_START ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int QCA955X_PCI_INTR_DEV0 ; 
 scalar_t__ QCA955X_PCI_INTR_MASK ; 
 scalar_t__ QCA955X_PCI_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intr_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	struct ar71xx_pci_softc *sc = arg;
	struct intr_event *event;
	uint32_t reg, irq, mask;

	/* There's only one PCIe DDR flush for both PCIe EPs */
	FUNC2(AR71XX_CPU_DDR_FLUSH_PCIE);

	reg = FUNC0(sc->sc_pci_ctrl_base + QCA955X_PCI_INTR_STATUS);
	mask = FUNC0(sc->sc_pci_ctrl_base + QCA955X_PCI_INTR_MASK);

	/*
	 * Handle only unmasked interrupts
	 */
	reg &= mask;
	/*
	 * XXX TODO: handle >1 PCIe end point!
	 */
	if (reg & QCA955X_PCI_INTR_DEV0) {
		irq = AR71XX_PCI_IRQ_START;
		event = sc->sc_eventstab[irq];
		if (!event || FUNC1(&event->ie_handlers)) {
			FUNC5("Stray IRQ %d\n", irq);
			return (FILTER_STRAY);
		}

		/* TODO: frame instead of NULL? */
		FUNC3(event, NULL);
		FUNC4(sc->sc_intr_counter[irq]);
	}

	return (FILTER_HANDLED);
}