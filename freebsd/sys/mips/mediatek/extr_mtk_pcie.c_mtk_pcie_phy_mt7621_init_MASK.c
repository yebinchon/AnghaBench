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
 int /*<<< orphan*/  MT7621_GPIO_CTRL0 ; 
 int /*<<< orphan*/  MT7621_GPIO_DATA0 ; 
 int /*<<< orphan*/  MT7621_PCIE_RST ; 
 int MT7621_PERST_GPIO ; 
 int MT7621_PERST_GPIO_MODE ; 
 int MT7621_UARTL3_GPIO ; 
 int MT7621_UARTL3_GPIO_MODE ; 
 int /*<<< orphan*/  SYSCTL_GPIOMODE ; 
 int SYSCTL_MT7621_REV_E ; 
 int /*<<< orphan*/  SYSCTL_REVID ; 
 int SYSCTL_REVID_MASK ; 
 struct mtk_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_pci_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_pci_softc*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC1(dev);

	/* First off, stop the PHY */
	if (FUNC6(dev))
		return (ENXIO);

	/* PCIe resets are GPIO pins */
	FUNC7(SYSCTL_GPIOMODE, MT7621_PERST_GPIO_MODE |
	    MT7621_UARTL3_GPIO_MODE, MT7621_PERST_GPIO | MT7621_UARTL3_GPIO);

	/* Set GPIO pins as outputs */
	FUNC2(MT7621_GPIO_CTRL0, 0, MT7621_PCIE_RST);

	/* Assert resets to PCIe devices */
	FUNC2(MT7621_GPIO_DATA0, MT7621_PCIE_RST, 0);

	/* Give everything a chance to sink in */
	FUNC0(100000);

	/* Now start the PHY again */
	if (FUNC5(dev))
		return (ENXIO);

	/* Wait for things to settle */
	FUNC0(100000);

	/* Only apply below to REV-E hardware */
	if ((FUNC8(SYSCTL_REVID) & SYSCTL_REVID_MASK) == 
	    SYSCTL_MT7621_REV_E)
		FUNC3(sc, 0x9000);

	/* Setup PCIe ports 0 and 1 */
	FUNC4(sc, 0x9000);
	/* Setup PCIe port 2 */
	FUNC4(sc, 0xa000);

	/* Deassert resets to PCIe devices */
	FUNC2(MT7621_GPIO_DATA0, 0, MT7621_PCIE_RST);

	/* Set number of slots supported */
	sc->num_slots = 3;

	/* Give it a chance to sink in */
	FUNC0(100000);

	return (0);
}