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
struct mtk_pci_softc {scalar_t__ socid; int pcie_link_status; int num_slots; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  MTK_PCI_PCIENA ; 
 scalar_t__ MTK_SOC_MT7620A ; 
 scalar_t__ MTK_SOC_MT7621 ; 
 scalar_t__ MTK_SOC_MT7628 ; 
 scalar_t__ MTK_SOC_MT7688 ; 
 int FUNC6 (struct mtk_pci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_pci_softc*,int /*<<< orphan*/ ,int) ; 
 int PCIR_IOBASEH_1 ; 
 int PCIR_IOBASEL_1 ; 
 int PCIR_IOLIMITH_1 ; 
 int PCIR_IOLIMITL_1 ; 
 int PCIR_MEMBASE_1 ; 
 int PCIR_MEMLIMIT_1 ; 
 int PCIR_PMBASEH_1 ; 
 int PCIR_PMBASEL_1 ; 
 int PCIR_PMLIMITH_1 ; 
 int PCIR_PMLIMITL_1 ; 
 struct mtk_pci_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC11(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC8(dev);
	uint32_t bar0_val, val;
	int i;

	/* Disable all PCIe interrupts */
	FUNC7(sc, MTK_PCI_PCIENA, 0);

	/* Default bar0_val is 64M, enabled */
	bar0_val = 0x03FF0001;

	/* But we override it to 2G, enabled for some SoCs */
	if (sc->socid == MTK_SOC_MT7620A || sc->socid == MTK_SOC_MT7628 ||
	    sc->socid == MTK_SOC_MT7688 || sc->socid == MTK_SOC_MT7621)
		bar0_val = 0x7FFF0001;

	/* We still don't know which slots have linked up */
	sc->pcie_link_status = 0;

	/* XXX: I am not sure if this delay is really necessary */
	FUNC0(500000);

	/*
	 * See which slots have links and mark them.
	 * Set up all slots' BARs and make them look like PCIe bridges.
	 */
	for (i = 0; i < sc->num_slots; i++) {
		/* If slot has link - mark it */
		if (FUNC6(sc, FUNC5(i)) & 1)
			sc->pcie_link_status |= (1<<i);
		else
			continue;

		/* Generic slot configuration follows */

		/* We enable BAR0 */
		FUNC7(sc, FUNC1(i), bar0_val);
		/* and disable BAR1 */
		FUNC7(sc, FUNC2(i), 0);
		/* Internal memory base has no offset */
		FUNC7(sc, FUNC4(i), 0);
		/* We're a PCIe bridge */
		FUNC7(sc, FUNC3(i), 0x06040001);

		val = FUNC9(dev, 0, i, 0, 0x4, 4);
		FUNC10(dev, 0, i, 0, 0x4, val | 0x4, 4);
		val = FUNC9(dev, 0, i, 0, 0x70c, 4);
		val &= ~(0xff << 8);
		val |= (0x50 << 8);
		FUNC10(dev, 0, i, 0, 0x70c, val, 4);

		FUNC10(dev, 0, i, 0, PCIR_IOBASEL_1, 0xff, 1);
		FUNC10(dev, 0, i, 0, PCIR_IOBASEH_1, 0xffff, 2);
		FUNC10(dev, 0, i, 0, PCIR_IOLIMITL_1, 0, 1);
		FUNC10(dev, 0, i, 0, PCIR_IOLIMITH_1, 0, 2);
		FUNC10(dev, 0, i, 0, PCIR_MEMBASE_1, 0xffff, 2);
		FUNC10(dev, 0, i, 0, PCIR_MEMLIMIT_1, 0, 2);
		FUNC10(dev, 0, i, 0, PCIR_PMBASEL_1, 0xffff, 2);
		FUNC10(dev, 0, i, 0, PCIR_PMBASEH_1, 0xffffffff,
		    4);
		FUNC10(dev, 0, i, 0, PCIR_PMLIMITL_1, 0, 2);
		FUNC10(dev, 0, i, 0, PCIR_PMLIMITH_1, 0, 4);
	}
}