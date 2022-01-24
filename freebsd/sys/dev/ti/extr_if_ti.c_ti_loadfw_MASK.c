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
struct ti_softc {int ti_hwrev; int /*<<< orphan*/  ti_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_CPU_PROGRAM_COUNTER ; 
 int /*<<< orphan*/  TI_FIRMWARE_FIX ; 
 int /*<<< orphan*/  TI_FIRMWARE_MAJOR ; 
 int /*<<< orphan*/  TI_FIRMWARE_MINOR ; 
#define  TI_HWREV_TIGON 129 
#define  TI_HWREV_TIGON_II 128 
 int /*<<< orphan*/  FUNC1 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tigon2FwBssAddr ; 
 int /*<<< orphan*/  tigon2FwBssLen ; 
 int /*<<< orphan*/  tigon2FwData ; 
 int /*<<< orphan*/  tigon2FwDataAddr ; 
 int /*<<< orphan*/  tigon2FwDataLen ; 
 int /*<<< orphan*/  tigon2FwReleaseFix ; 
 int /*<<< orphan*/  tigon2FwReleaseMajor ; 
 int /*<<< orphan*/  tigon2FwReleaseMinor ; 
 int /*<<< orphan*/  tigon2FwRodata ; 
 int /*<<< orphan*/  tigon2FwRodataAddr ; 
 int /*<<< orphan*/  tigon2FwRodataLen ; 
 int /*<<< orphan*/  tigon2FwSbssAddr ; 
 int /*<<< orphan*/  tigon2FwSbssLen ; 
 int /*<<< orphan*/  tigon2FwStartAddr ; 
 int /*<<< orphan*/  tigon2FwText ; 
 int /*<<< orphan*/  tigon2FwTextAddr ; 
 int /*<<< orphan*/  tigon2FwTextLen ; 
 int /*<<< orphan*/  tigonFwBssAddr ; 
 int /*<<< orphan*/  tigonFwBssLen ; 
 int /*<<< orphan*/  tigonFwData ; 
 int /*<<< orphan*/  tigonFwDataAddr ; 
 int /*<<< orphan*/  tigonFwDataLen ; 
 int /*<<< orphan*/  tigonFwReleaseFix ; 
 int /*<<< orphan*/  tigonFwReleaseMajor ; 
 int /*<<< orphan*/  tigonFwReleaseMinor ; 
 int /*<<< orphan*/  tigonFwRodata ; 
 int /*<<< orphan*/  tigonFwRodataAddr ; 
 int /*<<< orphan*/  tigonFwRodataLen ; 
 int /*<<< orphan*/  tigonFwSbssAddr ; 
 int /*<<< orphan*/  tigonFwSbssLen ; 
 int /*<<< orphan*/  tigonFwStartAddr ; 
 int /*<<< orphan*/  tigonFwText ; 
 int /*<<< orphan*/  tigonFwTextAddr ; 
 int /*<<< orphan*/  tigonFwTextLen ; 

__attribute__((used)) static void
FUNC5(struct ti_softc *sc)
{

	FUNC1(sc);

	switch (sc->ti_hwrev) {
	case TI_HWREV_TIGON:
		if (tigonFwReleaseMajor != TI_FIRMWARE_MAJOR ||
		    tigonFwReleaseMinor != TI_FIRMWARE_MINOR ||
		    tigonFwReleaseFix != TI_FIRMWARE_FIX) {
			FUNC2(sc->ti_dev, "firmware revision mismatch; "
			    "want %d.%d.%d, got %d.%d.%d\n",
			    TI_FIRMWARE_MAJOR, TI_FIRMWARE_MINOR,
			    TI_FIRMWARE_FIX, tigonFwReleaseMajor,
			    tigonFwReleaseMinor, tigonFwReleaseFix);
			return;
		}
		FUNC3(sc, tigonFwTextAddr, tigonFwTextLen, tigonFwText);
		FUNC3(sc, tigonFwDataAddr, tigonFwDataLen, tigonFwData);
		FUNC3(sc, tigonFwRodataAddr, tigonFwRodataLen,
		    tigonFwRodata);
		FUNC4(sc, tigonFwBssAddr, tigonFwBssLen);
		FUNC4(sc, tigonFwSbssAddr, tigonFwSbssLen);
		FUNC0(sc, TI_CPU_PROGRAM_COUNTER, tigonFwStartAddr);
		break;
	case TI_HWREV_TIGON_II:
		if (tigon2FwReleaseMajor != TI_FIRMWARE_MAJOR ||
		    tigon2FwReleaseMinor != TI_FIRMWARE_MINOR ||
		    tigon2FwReleaseFix != TI_FIRMWARE_FIX) {
			FUNC2(sc->ti_dev, "firmware revision mismatch; "
			    "want %d.%d.%d, got %d.%d.%d\n",
			    TI_FIRMWARE_MAJOR, TI_FIRMWARE_MINOR,
			    TI_FIRMWARE_FIX, tigon2FwReleaseMajor,
			    tigon2FwReleaseMinor, tigon2FwReleaseFix);
			return;
		}
		FUNC3(sc, tigon2FwTextAddr, tigon2FwTextLen,
		    tigon2FwText);
		FUNC3(sc, tigon2FwDataAddr, tigon2FwDataLen,
		    tigon2FwData);
		FUNC3(sc, tigon2FwRodataAddr, tigon2FwRodataLen,
		    tigon2FwRodata);
		FUNC4(sc, tigon2FwBssAddr, tigon2FwBssLen);
		FUNC4(sc, tigon2FwSbssAddr, tigon2FwSbssLen);
		FUNC0(sc, TI_CPU_PROGRAM_COUNTER, tigon2FwStartAddr);
		break;
	default:
		FUNC2(sc->ti_dev,
		    "can't load firmware: unknown hardware rev\n");
		break;
	}
}