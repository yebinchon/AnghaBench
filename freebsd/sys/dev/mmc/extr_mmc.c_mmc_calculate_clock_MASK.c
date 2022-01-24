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
typedef  int /*<<< orphan*/  uint16_t ;
struct mmc_softc {int child_count; int /*<<< orphan*/ * child_list; int /*<<< orphan*/  dev; } ;
struct mmc_ivars {int timings; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  rca; } ;
typedef  enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ MMC_ERR_NONE ; 
 scalar_t__ bootverbose ; 
 int bus_timing_max ; 
 int bus_timing_mmc_ddr52 ; 
 int bus_timing_mmc_hs200 ; 
 int bus_timing_mmc_hs400 ; 
 int bus_timing_mmc_hs400es ; 
 int bus_timing_normal ; 
 struct mmc_ivars* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 scalar_t__ mmc_debug ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct mmc_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mmc_softc*,struct mmc_ivars*,int) ; 
 scalar_t__ FUNC7 (struct mmc_softc*,struct mmc_ivars*) ; 
 scalar_t__ FUNC8 (struct mmc_softc*,struct mmc_ivars*,int) ; 
 scalar_t__ FUNC9 (struct mmc_softc*,struct mmc_ivars*,int) ; 
 scalar_t__ FUNC10 (struct mmc_softc*,struct mmc_ivars*,int,int) ; 
 int FUNC11 (struct mmc_ivars*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(struct mmc_softc *sc)
{
	device_t dev;
	struct mmc_ivars *ivar;
	int i;
	uint32_t dtr, max_dtr;
	uint16_t rca;
	enum mmc_bus_timing max_timing, timing;
	bool changed, hs400;

	dev = sc->dev;
	max_dtr = FUNC13(dev);
	max_timing = bus_timing_max;
	do {
		changed = false;
		for (i = 0; i < sc->child_count; i++) {
			ivar = FUNC0(sc->child_list[i]);
			if (FUNC2(&ivar->timings, max_timing) ||
			    !FUNC4(dev, max_timing)) {
				for (timing = max_timing - 1; timing >=
				    bus_timing_normal; timing--) {
					if (FUNC3(&ivar->timings, timing) &&
					    FUNC4(dev, timing)) {
						max_timing = timing;
						break;
					}
				}
				changed = true;
			}
			dtr = FUNC11(ivar, max_timing);
			if (dtr < max_dtr) {
				max_dtr = dtr;
				changed = true;
			}
		}
	} while (changed == true);

	if (bootverbose || mmc_debug) {
		FUNC1(dev,
		    "setting transfer rate to %d.%03dMHz (%s timing)\n",
		    max_dtr / 1000000, (max_dtr / 1000) % 1000,
		    FUNC12(max_timing));
	}

	/*
	 * HS400 must be tuned in HS200 mode, so in case of HS400 we begin
	 * with HS200 following the sequence as described in "6.6.2.2 HS200
	 * timing mode selection" of the eMMC specification v5.1, too, and
	 * switch to max_timing later.  HS400ES requires no tuning and, thus,
	 * can be switch to directly, but requires the same detour via high
	 * speed mode as does HS400 (see mmc_switch_to_hs400()).
	 */
	hs400 = max_timing == bus_timing_mmc_hs400;
	timing = hs400 == true ? bus_timing_mmc_hs200 : max_timing;
	for (i = 0; i < sc->child_count; i++) {
		ivar = FUNC0(sc->child_list[i]);
		if ((ivar->timings & ~(1 << bus_timing_normal)) == 0)
			goto clock;

		rca = ivar->rca;
		if (FUNC5(sc, rca) != MMC_ERR_NONE) {
			FUNC1(dev, "Card at relative address %d "
			    "failed to select\n", rca);
			continue;
		}

		if (timing == bus_timing_mmc_hs200 ||	/* includes HS400 */
		    timing == bus_timing_mmc_hs400es) {
			if (FUNC9(sc, ivar, timing) != MMC_ERR_NONE) {
				FUNC1(dev, "Failed to set VCCQ for "
				    "card at relative address %d\n", rca);
				continue;
			}
		}

		if (timing == bus_timing_mmc_hs200) {	/* includes HS400 */
			/* Set bus width (required for initial tuning). */
			if (FUNC6(sc, ivar, timing) !=
			    MMC_ERR_NONE) {
				FUNC1(dev, "Card at relative address "
				    "%d failed to set bus width\n", rca);
				continue;
			}
			FUNC14(dev, ivar->bus_width);
			FUNC17(dev);
		} else if (timing == bus_timing_mmc_hs400es) {
			if (FUNC10(sc, ivar, max_dtr, timing) !=
			    MMC_ERR_NONE) {
				FUNC1(dev, "Card at relative address "
				    "%d failed to set %s timing\n", rca,
				    FUNC12(timing));
				continue;
			}
			goto power_class;
		}

		if (FUNC8(sc, ivar, timing) != MMC_ERR_NONE) {
			FUNC1(dev, "Card at relative address %d "
			    "failed to set %s timing\n", rca,
			    FUNC12(timing));
			continue;
		}

		if (timing == bus_timing_mmc_ddr52) {
			/*
			 * Set EXT_CSD_BUS_WIDTH_n_DDR in EXT_CSD_BUS_WIDTH
			 * (must be done after switching to EXT_CSD_HS_TIMING).
			 */
			if (FUNC6(sc, ivar, timing) !=
			    MMC_ERR_NONE) {
				FUNC1(dev, "Card at relative address "
				    "%d failed to set bus width\n", rca);
				continue;
			}
			FUNC14(dev, ivar->bus_width);
			FUNC17(dev);
			if (FUNC9(sc, ivar, timing) != MMC_ERR_NONE) {
				FUNC1(dev, "Failed to set VCCQ for "
				    "card at relative address %d\n", rca);
				continue;
			}
		}

clock:
		/* Set clock (must be done before initial tuning). */
		FUNC15(dev, max_dtr);
		FUNC17(dev);

		if (FUNC16(dev, hs400) != 0) {
			FUNC1(dev, "Card at relative address %d "
			    "failed to execute initial tuning\n", rca);
			continue;
		}

		if (hs400 == true && FUNC10(sc, ivar, max_dtr,
		    max_timing) != MMC_ERR_NONE) {
			FUNC1(dev, "Card at relative address %d "
			    "failed to set %s timing\n", rca,
			    FUNC12(max_timing));
			continue;
		}

power_class:
		if (FUNC7(sc, ivar) != MMC_ERR_NONE) {
			FUNC1(dev, "Card at relative address %d "
			    "failed to set power class\n", rca);
		}
	}
	(void)FUNC5(sc, 0);
	return (max_dtr);
}