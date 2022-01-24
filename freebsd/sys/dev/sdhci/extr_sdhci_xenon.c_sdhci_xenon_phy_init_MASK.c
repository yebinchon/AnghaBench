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
struct sdhci_xenon_softc {int /*<<< orphan*/  mem_res; scalar_t__ slow_mode; } ;
struct mmc_ios {int timing; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  XENON_EMMC_PHY_TIMING_ADJUST ; 
 int XENON_PHY_INITIALIZATION ; 
 int XENON_SAMPL_INV_QSP_PHASE_SELECT ; 
 int XENON_TIMING_ADJUST_SLOW_MODE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  bus_timing_hs 132 
#define  bus_timing_normal 131 
#define  bus_timing_uhs_sdr12 130 
#define  bus_timing_uhs_sdr25 129 
#define  bus_timing_uhs_sdr50 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sdhci_xenon_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t brdev, struct mmc_ios *ios)
{
	int i;
	struct sdhci_xenon_softc *sc;
	uint32_t reg;

 	sc = FUNC3(brdev);
	reg = FUNC1(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST);
	reg |= XENON_SAMPL_INV_QSP_PHASE_SELECT;
	switch (ios->timing) {
	case bus_timing_normal:
	case bus_timing_hs:
	case bus_timing_uhs_sdr12:
	case bus_timing_uhs_sdr25:
	case bus_timing_uhs_sdr50:
		reg |= XENON_TIMING_ADJUST_SLOW_MODE;
		break;
	default:
		reg &= ~XENON_TIMING_ADJUST_SLOW_MODE;
	}
	if (sc->slow_mode)
		reg |= XENON_TIMING_ADJUST_SLOW_MODE;
	FUNC2(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST, reg);

	reg = FUNC1(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST);
	reg |= XENON_PHY_INITIALIZATION;
	FUNC2(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST, reg);

	/* Wait for the eMMC PHY init. */
	for (i = 100; i > 0; i--) {
		FUNC0(100);

		reg = FUNC1(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST);
		if ((reg & XENON_PHY_INITIALIZATION) == 0)
			break;
	}

	if (i == 0) {
		FUNC4(brdev, "eMMC PHY failed to initialize\n");
		return (ETIMEDOUT);
	}

	return (0);
}