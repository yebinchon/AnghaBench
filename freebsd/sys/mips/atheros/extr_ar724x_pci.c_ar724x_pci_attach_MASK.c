#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct ar71xx_pci_softc {int /*<<< orphan*/  sc_ih; int /*<<< orphan*/ * sc_irq; TYPE_1__ sc_irq_rman; TYPE_1__ sc_mem_rman; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ AR71XX_PCI_IRQ_END ; 
 scalar_t__ AR71XX_PCI_IRQ_START ; 
 scalar_t__ AR71XX_PCI_MEM_BASE ; 
 scalar_t__ AR71XX_PCI_MEM_SIZE ; 
 int /*<<< orphan*/  AR724X_PCI_INTR_MASK ; 
 int /*<<< orphan*/  AR724X_PCI_INTR_STATUS ; 
 int /*<<< orphan*/  AR724X_RESET_PCIE ; 
 int /*<<< orphan*/  AR724X_RESET_PCIE_PHY ; 
 int /*<<< orphan*/  AR724X_RESET_PCIE_PHY_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int PCIM_CMD_BACKTOBACK ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_MWRICEN ; 
 int PCIM_CMD_PERRESPEN ; 
 int PCIM_CMD_SERRESPEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar724x_pci_intr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ar71xx_pci_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 struct ar71xx_pci_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct ar71xx_pci_softc *sc = FUNC11(dev);
	int rid = 0;

	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
	sc->sc_mem_rman.rm_descr = "ar724x PCI memory window";
	if (FUNC14(&sc->sc_mem_rman) != 0 || 
	    FUNC15(&sc->sc_mem_rman, AR71XX_PCI_MEM_BASE, 
		AR71XX_PCI_MEM_BASE + AR71XX_PCI_MEM_SIZE - 1) != 0) {
		FUNC13("ar724x_pci_attach: failed to set up I/O rman");
	}

	sc->sc_irq_rman.rm_type = RMAN_ARRAY;
	sc->sc_irq_rman.rm_descr = "ar724x PCI IRQs";
	if (FUNC14(&sc->sc_irq_rman) != 0 ||
	    FUNC15(&sc->sc_irq_rman, AR71XX_PCI_IRQ_START, 
	        AR71XX_PCI_IRQ_END) != 0)
		FUNC13("ar724x_pci_attach: failed to set up IRQ rman");

	/* Disable interrupts */
	FUNC0(AR724X_PCI_INTR_STATUS, 0);
	FUNC0(AR724X_PCI_INTR_MASK, 0);

	/* Hook up our interrupt handler. */
	if ((sc->sc_irq = FUNC7(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE)) == NULL) {
		FUNC12(dev, "unable to allocate IRQ resource\n");
		return (ENXIO);
	}

	if ((FUNC9(dev, sc->sc_irq, INTR_TYPE_MISC,
			    ar724x_pci_intr, NULL, sc, &sc->sc_ih))) {
		FUNC12(dev, 
		    "WARNING: unable to register interrupt handler\n");
		return (ENXIO);
	}

	/* Reset PCIe core and PCIe PHY */
	FUNC3(AR724X_RESET_PCIE);
	FUNC3(AR724X_RESET_PCIE_PHY);
	FUNC3(AR724X_RESET_PCIE_PHY_SERIAL);
	FUNC1(100);

	FUNC2(AR724X_RESET_PCIE_PHY_SERIAL);
	FUNC1(100);
	FUNC2(AR724X_RESET_PCIE_PHY);
	FUNC2(AR724X_RESET_PCIE);

	if (FUNC4(dev))
		return (ENXIO);

#ifdef	AR71XX_ATH_EEPROM
	ar724x_pci_slot_fixup(dev);
#endif	/* AR71XX_ATH_EEPROM */

	/* Fixup internal PCI bridge */
	FUNC6(dev, 0, 0, 0, PCIR_COMMAND, 
            PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN 
	    | PCIM_CMD_SERRESPEN | PCIM_CMD_BACKTOBACK
	    | PCIM_CMD_PERRESPEN | PCIM_CMD_MWRICEN, 2);

	FUNC10(dev, "pci", -1);
	return (FUNC8(dev));
}