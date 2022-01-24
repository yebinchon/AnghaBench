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
typedef  int /*<<< orphan*/  uint32_t ;
struct mmc_softc {int retune_needed; scalar_t__ retune_paused; } ;
struct mmc_ivars {int dummy; } ;
typedef  enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
#define  EIO 128 
 int MMC_ERR_BADCRC ; 
 int MMC_ERR_FAILED ; 
 int MMC_ERR_INVALID ; 
 scalar_t__ MMC_ERR_NONE ; 
 int bus_timing_mmc_hs400 ; 
 struct mmc_ivars* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct mmc_softc* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct mmc_softc*,struct mmc_ivars*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mmc_softc*,struct mmc_ivars*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC8(device_t busdev, device_t dev, bool reset)
{
	struct mmc_softc *sc;
	struct mmc_ivars *ivar;
	int err;
	uint32_t clock;
	enum mmc_bus_timing timing;

	if (FUNC1(dev) != busdev)
		return (MMC_ERR_INVALID);

	sc = FUNC2(busdev);
	if (sc->retune_needed != 1 && sc->retune_paused != 0)
		return (MMC_ERR_INVALID);

	timing = FUNC6(busdev);
	if (timing == bus_timing_mmc_hs400) {
		/*
		 * Controllers use the data strobe line to latch data from
		 * the devices in HS400 mode so periodic re-tuning isn't
		 * expected to be required, i. e. only if a CRC or tuning
		 * error is signaled to the bridge.  In these latter cases
		 * we are asked to reset the tuning circuit and need to do
		 * the switch timing dance.
		 */
		if (reset == false)
			return (0);
		ivar = FUNC0(dev);
		clock = FUNC5(busdev);
		if (FUNC3(sc, ivar, clock) != MMC_ERR_NONE)
			return (MMC_ERR_BADCRC);
	}
	err = FUNC7(busdev, reset);
	if (err != 0 && timing == bus_timing_mmc_hs400)
		return (MMC_ERR_BADCRC);
	switch (err) {
	case 0:
		break;
	case EIO:
		return (MMC_ERR_FAILED);
	default:
		return (MMC_ERR_INVALID);
	}
	if (timing == bus_timing_mmc_hs400) {
		if (FUNC4(sc, ivar, clock, timing) !=
		    MMC_ERR_NONE)
			return (MMC_ERR_BADCRC);
	}
	return (MMC_ERR_NONE);
}