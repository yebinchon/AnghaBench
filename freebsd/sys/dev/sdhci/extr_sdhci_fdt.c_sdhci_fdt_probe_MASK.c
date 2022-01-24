#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdhci_fdt_softc {int quirks; int num_slots; int no_18v; int wp_inverted; void* max_clk; int /*<<< orphan*/  sdma_boundary; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cid ;
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SDHCI_BLKSZ_SDMA_BNDRY_4K ; 
#define  SDHCI_FDT_ARMADA38X 132 
#define  SDHCI_FDT_GENERIC 131 
#define  SDHCI_FDT_QUALCOMM 130 
#define  SDHCI_FDT_RK3399 129 
#define  SDHCI_FDT_XLNX_ZY7 128 
 int SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE ; 
 int SDHCI_QUIRK_BROKEN_AUTO_STOP ; 
 int SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY ; 
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ; 
 int /*<<< orphan*/  compat_data ; 
 struct sdhci_fdt_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct sdhci_fdt_softc *sc = FUNC2(dev);
	phandle_t node;
	pcell_t cid;

	sc->quirks = 0;
	sc->num_slots = 1;
	sc->max_clk = 0;

	if (!FUNC6(dev))
		return (ENXIO);

	switch (FUNC5(dev, compat_data)->ocd_data) {
	case SDHCI_FDT_ARMADA38X:
		sc->quirks = SDHCI_QUIRK_BROKEN_AUTO_STOP;
		FUNC3(dev, "ARMADA38X SDHCI controller");
		break;
	case SDHCI_FDT_GENERIC:
		FUNC3(dev, "generic fdt SDHCI controller");
		break;
	case SDHCI_FDT_QUALCOMM:
		sc->quirks = SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE |
		    SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY;
		sc->sdma_boundary = SDHCI_BLKSZ_SDMA_BNDRY_4K;
		FUNC3(dev, "Qualcomm FDT SDHCI controller");
		break;
	case SDHCI_FDT_RK3399:
		FUNC3(dev, "Rockchip RK3399 fdt SDHCI controller");
		break;
	case SDHCI_FDT_XLNX_ZY7:
		sc->quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK;
		FUNC3(dev, "Zynq-7000 generic fdt SDHCI controller");
		break;
	default:
		return (ENXIO);
	}

	node = FUNC4(dev);

	/* Allow dts to patch quirks, slots, and max-frequency. */
	if ((FUNC0(node, "quirks", &cid, sizeof(cid))) > 0)
		sc->quirks = cid;
	if ((FUNC0(node, "num-slots", &cid, sizeof(cid))) > 0)
		sc->num_slots = cid;
	if ((FUNC0(node, "max-frequency", &cid, sizeof(cid))) > 0)
		sc->max_clk = cid;
	if (FUNC1(node, "no-1-8-v"))
		sc->no_18v = true;
	if (FUNC1(node, "wp-inverted"))
		sc->wp_inverted = true;

	return (0);
}