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
struct ar71xx_pci_softc {int sc_pci_membase_limit; scalar_t__ sc_pci_ctrl_base; int /*<<< orphan*/  sc_pci_crp_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENXIO ; 
 int PCIM_CMD_BACKTOBACK ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_MWRICEN ; 
 int PCIM_CMD_PERRESPEN ; 
 int PCIM_CMD_SERRESPEN ; 
 int PCIR_COMMAND ; 
 scalar_t__ QCA955X_PCI_APP ; 
 scalar_t__ QCA955X_PCI_RESET ; 
 int QCA955X_PCI_RESET_LINK_UP ; 
 struct ar71xx_pci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ar71xx_pci_softc *sc = FUNC3(dev);
	uint32_t reg;

	/* setup COMMAND register */
	reg = PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN | PCIM_CMD_SERRESPEN |
	    PCIM_CMD_BACKTOBACK | PCIM_CMD_PERRESPEN | PCIM_CMD_MWRICEN;

	FUNC5(sc->sc_pci_crp_base, PCIR_COMMAND, reg, 2);

	/* These are the memory/prefetch base/limit parameters */
	FUNC5(sc->sc_pci_crp_base, 0x20, sc->sc_pci_membase_limit, 4);
	FUNC5(sc->sc_pci_crp_base, 0x24, sc->sc_pci_membase_limit, 4);

	reg = FUNC0(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
	if (reg != 0x7) {
		FUNC2(100000);
		FUNC1(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET, 0);
		FUNC0(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
		FUNC2(100);
		FUNC1(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET, 4);
		FUNC0(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
		FUNC2(100000);
	}

	FUNC1(sc->sc_pci_ctrl_base + QCA955X_PCI_APP, 0x1ffc1);
	/* Flush write */
	(void) FUNC0(sc->sc_pci_ctrl_base + QCA955X_PCI_APP);

	FUNC2(1000);

	reg = FUNC0(sc->sc_pci_ctrl_base + QCA955X_PCI_RESET);
	if ((reg & QCA955X_PCI_RESET_LINK_UP) == 0) {
		FUNC4(dev, "no PCIe controller found\n");
		return (ENXIO);
	}

	return (0);
}