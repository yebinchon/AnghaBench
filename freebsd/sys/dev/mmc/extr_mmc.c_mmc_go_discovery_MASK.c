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
struct mmc_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  squelched; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ MMC_ERR_NONE ; 
 int MMC_OCR_CCS ; 
 int /*<<< orphan*/  SD_MMC_CARD_ID_FREQUENCY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_softc*) ; 
 scalar_t__ mmc_debug ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mmc_softc*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mmc_softc*,int) ; 
 scalar_t__ FUNC11 (struct mmc_softc*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ mode_mmc ; 
 scalar_t__ mode_sd ; 
 int /*<<< orphan*/  opendrain ; 
 scalar_t__ power_on ; 
 int /*<<< orphan*/  pushpull ; 

__attribute__((used)) static void
FUNC20(struct mmc_softc *sc)
{
	uint32_t ocr;
	device_t dev;
	int err;

	dev = sc->dev;
	if (FUNC14(dev) != power_on) {
		/*
		 * First, try SD modes
		 */
		sc->squelched++; /* Errors are expected, squelch reporting. */
		FUNC17(dev, mode_sd);
		FUNC6(sc);
		FUNC15(dev, pushpull);
		if (bootverbose || mmc_debug)
			FUNC0(sc->dev, "Probing bus\n");
		FUNC4(sc);
		err = FUNC10(sc, 1);
		if ((bootverbose || mmc_debug) && err == 0)
			FUNC0(sc->dev,
			    "SD 2.0 interface conditions: OK\n");
		if (FUNC9(sc, 0, &ocr) != MMC_ERR_NONE) {
			if (bootverbose || mmc_debug)
				FUNC0(sc->dev, "SD probe: failed\n");
			/*
			 * Failed, try MMC
			 */
			FUNC17(dev, mode_mmc);
			if (FUNC11(sc, 0, &ocr) != MMC_ERR_NONE) {
				if (bootverbose || mmc_debug)
					FUNC0(sc->dev,
					    "MMC probe: failed\n");
				ocr = 0; /* Failed both, powerdown. */
			} else if (bootverbose || mmc_debug)
				FUNC0(sc->dev,
				    "MMC probe: OK (OCR: 0x%08x)\n", ocr);
		} else if (bootverbose || mmc_debug)
			FUNC0(sc->dev, "SD probe: OK (OCR: 0x%08x)\n",
			    ocr);
		sc->squelched--;

		FUNC18(dev, FUNC8(sc, ocr));
		if (FUNC13(dev) != 0)
			FUNC4(sc);
	} else {
		FUNC15(dev, opendrain);
		FUNC16(dev, SD_MMC_CARD_ID_FREQUENCY);
		FUNC19(dev);
		/* XXX recompute vdd based on new cards? */
	}
	/*
	 * Make sure that we have a mutually agreeable voltage to at least
	 * one card on the bus.
	 */
	if (bootverbose || mmc_debug)
		FUNC0(sc->dev, "Current OCR: 0x%08x\n",
		    FUNC13(dev));
	if (FUNC13(dev) == 0) {
		FUNC0(sc->dev, "No compatible cards found on bus\n");
		(void)FUNC2(sc, false);
		FUNC5(sc);
		return;
	}
	/*
	 * Reselect the cards after we've idled them above.
	 */
	if (FUNC12(dev) == mode_sd) {
		err = FUNC10(sc, 1);
		FUNC9(sc,
		    (err ? 0 : MMC_OCR_CCS) | FUNC13(dev), NULL);
	} else
		FUNC11(sc, MMC_OCR_CCS | FUNC13(dev), NULL);
	FUNC3(sc);
	FUNC7(sc);

	FUNC15(dev, pushpull);
	FUNC19(dev);
	FUNC1(sc);
}