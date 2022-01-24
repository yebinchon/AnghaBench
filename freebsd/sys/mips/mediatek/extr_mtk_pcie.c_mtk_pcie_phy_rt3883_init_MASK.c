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
 int /*<<< orphan*/  MTK_PCI_ARBCTL ; 
 int /*<<< orphan*/  MTK_PCI_PCICFG ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pci_softc*,int /*<<< orphan*/ ,int) ; 
 int RT3883_PCIE_RC_MODE ; 
 int /*<<< orphan*/  RT3883_PCI_CLK ; 
 int RT3883_PCI_HOST_MODE ; 
 int RT3883_PCI_RST ; 
 int /*<<< orphan*/  SYSCTL_CLKCFG1 ; 
 int /*<<< orphan*/  SYSCTL_RSTCTRL ; 
 int /*<<< orphan*/  SYSCTL_SYSCFG1 ; 
 struct mtk_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC2(dev);

	/* Enable PCI host mode and PCIe RC mode */
	FUNC4(SYSCTL_SYSCFG1, 0, RT3883_PCI_HOST_MODE |
	    RT3883_PCIE_RC_MODE);

	/* Enable PCIe PHY */
	if (FUNC3(dev))
		return (ENXIO);

	/* Disable PCI, we only support PCIe for now */
	FUNC4(SYSCTL_RSTCTRL, 0, RT3883_PCI_RST);
	FUNC4(SYSCTL_CLKCFG1, RT3883_PCI_CLK, 0);

	/* Give things a chance to sink in */
	FUNC0(500000);

	/* Set PCIe port number to 0 and lift PCIe reset */
	FUNC1(sc, MTK_PCI_PCICFG, 0);

	/* Configure PCI Arbiter */
	FUNC1(sc, MTK_PCI_ARBCTL, 0x79);

	/* We have a single PCIe slot */
	sc->num_slots = 1;

	return (0);
}