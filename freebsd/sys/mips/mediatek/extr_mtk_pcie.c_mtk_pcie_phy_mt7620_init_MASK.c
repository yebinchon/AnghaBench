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
struct mtk_pci_softc {int num_slots; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int LC_CKDRVHZ ; 
 int LC_CKDRVOHZ ; 
 int LC_CKDRVPD ; 
 int MT7620_PERST ; 
 int MT7620_PERST_GPIO_MODE ; 
 int MT7620_PKG_BGA ; 
 int /*<<< orphan*/  MT7620_PPLL_CFG0 ; 
 int /*<<< orphan*/  MT7620_PPLL_CFG1 ; 
 int /*<<< orphan*/  MT7620_PPLL_DRV ; 
 int /*<<< orphan*/  MTK_PCI_PCICFG ; 
 int /*<<< orphan*/  MTK_PCI_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PDRV_SW_SET ; 
 int PPLL_LOCKED ; 
 int PPLL_PD ; 
 int PPLL_SW_SET ; 
 int /*<<< orphan*/  SYSCTL_GPIOMODE ; 
 int /*<<< orphan*/  SYSCTL_REVID ; 
 struct mtk_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct mtk_pci_softc*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC2(dev);

	/*
	 * The below sets the PCIe PHY to bypass the PCIe DLL and enables
	 * "elastic buffer control", whatever that may be...
	 */
	if (FUNC4(sc, 0x00, 0x80) ||
	    FUNC4(sc, 0x01, 0x04) ||
	    FUNC4(sc, 0x68, 0x84))
		return (ENXIO);

	/* Stop PCIe */
	if (FUNC6(dev))
		return (ENXIO);

	/* Restore PPLL to a sane state before going on */
	FUNC7(MT7620_PPLL_DRV, LC_CKDRVPD, PDRV_SW_SET);

	/* No PCIe on the MT7620N */
	if (!(FUNC8(SYSCTL_REVID) & MT7620_PKG_BGA)) {
		FUNC3(dev, "PCIe disabled for MT7620N\n");
		FUNC7(MT7620_PPLL_CFG0, 0, PPLL_SW_SET);
		FUNC7(MT7620_PPLL_CFG1, 0, PPLL_PD);
		return (ENXIO);
	}

	/* PCIe device reset pin is in normal mode */
	FUNC7(SYSCTL_GPIOMODE, MT7620_PERST_GPIO_MODE,
	    MT7620_PERST);

	/* Enable PCIe now */
	if (FUNC5(dev))
		return (ENXIO);

	/* Give it a chance to sink in */
	FUNC0(100000);

	/* If PLL is not locked - bail */
	if (!(FUNC8(MT7620_PPLL_CFG1) & PPLL_LOCKED)) {
		FUNC3(dev, "no PPLL not lock\n");
		FUNC6(dev);
		return (ENXIO);
	}

	/* Configure PCIe PLL */
	FUNC7(MT7620_PPLL_DRV, LC_CKDRVOHZ | LC_CKDRVHZ,
	    LC_CKDRVPD | PDRV_SW_SET);

	/* and give it a chance to settle */
	FUNC0(100000);

	/* Deassert PCIe device reset */
	FUNC1(sc, MTK_PCI_PCICFG, MTK_PCI_RESET, 0);

	/* MT7620 supports one PCIe slot */
	sc->num_slots = 1;

	return (0);
}