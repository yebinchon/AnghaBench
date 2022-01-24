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
 int /*<<< orphan*/  MT7628_PERST ; 
 int /*<<< orphan*/  MT7628_PERST_GPIO_MODE ; 
 int /*<<< orphan*/  MTK_PCI_PCICFG ; 
 int /*<<< orphan*/  MTK_PCI_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSCTL_GPIOMODE ; 
 struct mtk_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_pci_softc*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC2(dev);

	/* Set PCIe reset to normal mode */
	FUNC5(SYSCTL_GPIOMODE, MT7628_PERST_GPIO_MODE,
	    MT7628_PERST);

	/* Start the PHY */
	if (FUNC4(dev))
		return (ENXIO);

	/* Give it a chance to sink in */
	FUNC0(100000);

	/* Setup the PHY */
	FUNC3(sc, 0x9000);

	/* Deassert PCIe device reset */
	FUNC1(sc, MTK_PCI_PCICFG, MTK_PCI_RESET, 0);

	/* Set number of slots supported */
	sc->num_slots = 1;

	return (0);
}