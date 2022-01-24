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
struct mtk_pci_softc {int socid; scalar_t__ num_slots; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
#define  MTK_SOC_MT7620A 133 
#define  MTK_SOC_MT7621 132 
#define  MTK_SOC_MT7628 131 
#define  MTK_SOC_MT7688 130 
#define  MTK_SOC_RT3662 129 
#define  MTK_SOC_RT3883 128 
 struct mtk_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mtk_pci_softc *sc;

	/* Get our softc */
	sc = FUNC0(dev);

	/* We don't know how many slots we have yet */
	sc->num_slots = 0;

	/* Handle SoC specific PCIe init */
	switch (sc->socid) {
	case MTK_SOC_MT7628: /* Fallthrough */
	case MTK_SOC_MT7688:
		if (FUNC4(dev))
			return (ENXIO);
		break;
	case MTK_SOC_MT7621:
		if (FUNC3(dev))
			return (ENXIO);
		break;
	case MTK_SOC_MT7620A:
		if (FUNC2(dev))
			return (ENXIO);
		break;
	case MTK_SOC_RT3662: /* Fallthrough */
	case MTK_SOC_RT3883:
		if (FUNC5(dev))
			return (ENXIO);
		break;
	default:
		FUNC1(dev, "unsupported device %x\n", sc->socid);
		return (ENXIO);
	}

	/*
	 * If we were successful so far go and set up the PCIe slots, so we
	 * may allocate mem/io/irq resources and enumerate busses later.
	 */
	FUNC6(dev);

	return (0);
}