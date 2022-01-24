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
typedef  scalar_t__ uint16_t ;
struct mmc_softc {scalar_t__ last_rca; int child_count; scalar_t__ owner; } ;
struct mmc_ivars {scalar_t__ rca; int /*<<< orphan*/  bus_width; } ;
typedef  enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ MMC_ERR_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_softc*) ; 
 scalar_t__ bootverbose ; 
 int bus_timing_mmc_ddr52 ; 
 int bus_timing_mmc_hs200 ; 
 int /*<<< orphan*/  bus_width_4 ; 
 int /*<<< orphan*/  bus_width_8 ; 
 struct mmc_ivars* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct mmc_softc* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,scalar_t__,...) ; 
 scalar_t__ mmc_debug ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC8 (struct mmc_softc*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct mmc_softc*,struct mmc_ivars*,int) ; 
 scalar_t__ FUNC10 (struct mmc_softc*,struct mmc_ivars*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(device_t busdev, device_t dev)
{
	struct mmc_softc *sc;
	struct mmc_ivars *ivar;
	int err;
	uint16_t rca;
	enum mmc_bus_timing timing;

	err = FUNC0(FUNC4(busdev), busdev);
	if (err)
		return (err);
	sc = FUNC5(busdev);
	FUNC1(sc);
	if (sc->owner)
		FUNC15("mmc: host bridge didn't serialize us.");
	sc->owner = dev;
	FUNC2(sc);

	if (busdev != dev) {
		/*
		 * Keep track of the last rca that we've selected.  If
		 * we're asked to do it again, don't.  We never
		 * unselect unless the bus code itself wants the mmc
		 * bus, and constantly reselecting causes problems.
		 */
		ivar = FUNC3(dev);
		rca = ivar->rca;
		if (sc->last_rca != rca) {
			if (FUNC8(sc, rca) != MMC_ERR_NONE) {
				FUNC6(busdev, "Card at relative "
				    "address %d failed to select\n", rca);
				return (ENXIO);
			}
			sc->last_rca = rca;
			timing = FUNC12(busdev);
			/*
			 * For eMMC modes, setting/updating bus width and VCCQ
			 * only really is necessary if there actually is more
			 * than one device on the bus as generally that already
			 * had to be done by mmc_calculate_clock() or one of
			 * its calees.  Moreover, setting the bus width anew
			 * can trigger re-tuning (via a CRC error on the next
			 * CMD), even if not switching between devices an the
			 * previously selected one is still tuned.  Obviously,
			 * we need to re-tune the host controller if devices
			 * are actually switched, though.
			 */
			if (timing >= bus_timing_mmc_ddr52 &&
			    sc->child_count == 1)
				return (0);
			/* Prepare bus width for the new card. */
			if (bootverbose || mmc_debug) {
				FUNC6(busdev,
				    "setting bus width to %d bits %s timing\n",
				    (ivar->bus_width == bus_width_4) ? 4 :
				    (ivar->bus_width == bus_width_8) ? 8 : 1,
				    FUNC11(timing));
			}
			if (FUNC9(sc, ivar, timing) !=
			    MMC_ERR_NONE) {
				FUNC6(busdev, "Card at relative "
				    "address %d failed to set bus width\n",
				    rca);
				return (ENXIO);
			}
			FUNC13(busdev, ivar->bus_width);
			FUNC14(busdev);
			if (FUNC10(sc, ivar, timing) != MMC_ERR_NONE) {
				FUNC6(busdev, "Failed to set VCCQ "
				    "for card at relative address %d\n", rca);
				return (ENXIO);
			}
			if (timing >= bus_timing_mmc_hs200 &&
			    FUNC7(busdev, dev, true) != 0) {
				FUNC6(busdev, "Card at relative "
				    "address %d failed to re-tune\n", rca);
				return (ENXIO);
			}
		}
	} else {
		/*
		 * If there's a card selected, stand down.
		 */
		if (sc->last_rca != 0) {
			if (FUNC8(sc, 0) != MMC_ERR_NONE)
				return (ENXIO);
			sc->last_rca = 0;
		}
	}

	return (0);
}