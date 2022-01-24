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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct seeprom_descriptor {int sd_MS; int sd_CS; } ;
struct ahc_softc {int features; int flags; } ;

/* Variables and functions */
 int AHC_INT50_SPEEDFLEX ; 
 int AHC_NEW_TERMCTL ; 
 int AHC_SPIOCAP ; 
 int AHC_ULTRA2 ; 
 int AHC_WIDE ; 
 int /*<<< orphan*/  BRDDAT4 ; 
 int /*<<< orphan*/  BRDDAT5 ; 
 int /*<<< orphan*/  BRDDAT6 ; 
 int CFAUTOTERM ; 
 int CFSEAUTOTERM ; 
 int CFSEHIGHTERM ; 
 int CFSELOWTERM ; 
 int CFSTERM ; 
 int CFWSTERM ; 
 int /*<<< orphan*/  FUNC0 (struct seeprom_descriptor*,int) ; 
 int STPWEN ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 char* FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,int*,int*,int*,int*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ahc_softc *ahc,
		      struct seeprom_descriptor *sd,
		      u_int adapter_control,
		      u_int *sxfrctl1)
{
	uint8_t brddat;
	
	brddat = 0;

	/*
	 * Update the settings in sxfrctl1 to match the
	 * termination settings 
	 */
	*sxfrctl1 = 0;
	
	/*
	 * SEECS must be on for the GALS to latch
	 * the data properly.  Be sure to leave MS
	 * on or we will release the seeprom.
	 */
	FUNC0(sd, sd->sd_MS | sd->sd_CS);
	if ((adapter_control & CFAUTOTERM) != 0
	 || (ahc->features & AHC_NEW_TERMCTL) != 0) {
		int internal50_present;
		int internal68_present;
		int externalcable_present;
		int eeprom_present;
		int enableSEC_low;
		int enableSEC_high;
		int enablePRI_low;
		int enablePRI_high;
		int sum;

		enableSEC_low = 0;
		enableSEC_high = 0;
		enablePRI_low = 0;
		enablePRI_high = 0;
		if ((ahc->features & AHC_NEW_TERMCTL) != 0) {
			FUNC2(ahc, &enableSEC_low,
					    &enableSEC_high,
					    &enablePRI_low,
					    &enablePRI_high,
					    &eeprom_present);
			if ((adapter_control & CFSEAUTOTERM) == 0) {
				if (bootverbose)
					FUNC6("%s: Manual SE Termination\n",
					       FUNC1(ahc));
				enableSEC_low = (adapter_control & CFSELOWTERM);
				enableSEC_high =
				    (adapter_control & CFSEHIGHTERM);
			}
			if ((adapter_control & CFAUTOTERM) == 0) {
				if (bootverbose)
					FUNC6("%s: Manual LVD Termination\n",
					       FUNC1(ahc));
				enablePRI_low = (adapter_control & CFSTERM);
				enablePRI_high = (adapter_control & CFWSTERM);
			}
			/* Make the table calculations below happy */
			internal50_present = 0;
			internal68_present = 1;
			externalcable_present = 1;
		} else if ((ahc->features & AHC_SPIOCAP) != 0) {
			FUNC4(ahc, &internal50_present,
					     &externalcable_present,
					     &eeprom_present);
			/* Can never support a wide connector. */
			internal68_present = 0;
		} else {
			FUNC5(ahc, &internal50_present,
					     &internal68_present,
					     &externalcable_present,
					     &eeprom_present);
		}

		if ((ahc->features & AHC_WIDE) == 0)
			internal68_present = 0;

		if (bootverbose
		 && (ahc->features & AHC_ULTRA2) == 0) {
			FUNC6("%s: internal 50 cable %s present",
			       FUNC1(ahc),
			       internal50_present ? "is":"not");

			if ((ahc->features & AHC_WIDE) != 0)
				FUNC6(", internal 68 cable %s present",
				       internal68_present ? "is":"not");
			FUNC6("\n%s: external cable %s present\n",
			       FUNC1(ahc),
			       externalcable_present ? "is":"not");
		}
		if (bootverbose)
			FUNC6("%s: BIOS eeprom %s present\n",
			       FUNC1(ahc), eeprom_present ? "is" : "not");

		if ((ahc->flags & AHC_INT50_SPEEDFLEX) != 0) {
			/*
			 * The 50 pin connector is a separate bus,
			 * so force it to always be terminated.
			 * In the future, perform current sensing
			 * to determine if we are in the middle of
			 * a properly terminated bus.
			 */
			internal50_present = 0;
		}

		/*
		 * Now set the termination based on what
		 * we found.
		 * Flash Enable = BRDDAT7
		 * Secondary High Term Enable = BRDDAT6
		 * Secondary Low Term Enable = BRDDAT5 (7890)
		 * Primary High Term Enable = BRDDAT4 (7890)
		 */
		if ((ahc->features & AHC_ULTRA2) == 0
		 && (internal50_present != 0)
		 && (internal68_present != 0)
		 && (externalcable_present != 0)) {
			FUNC6("%s: Illegal cable configuration!!. "
			       "Only two connectors on the "
			       "adapter may be used at a "
			       "time!\n", FUNC1(ahc));

			/*
			 * Pretend there are no cables in the hope
			 * that having all of the termination on
			 * gives us a more stable bus.
			 */
		 	internal50_present = 0;
			internal68_present = 0;
			externalcable_present = 0;
		}

		if ((ahc->features & AHC_WIDE) != 0
		 && ((externalcable_present == 0)
		  || (internal68_present == 0)
		  || (enableSEC_high != 0))) {
			brddat |= BRDDAT6;
			if (bootverbose) {
				if ((ahc->flags & AHC_INT50_SPEEDFLEX) != 0)
					FUNC6("%s: 68 pin termination "
					       "Enabled\n", FUNC1(ahc));
				else
					FUNC6("%s: %sHigh byte termination "
					       "Enabled\n", FUNC1(ahc),
					       enableSEC_high ? "Secondary "
							      : "");
			}
		}

		sum = internal50_present + internal68_present
		    + externalcable_present;
		if (sum < 2 || (enableSEC_low != 0)) {
			if ((ahc->features & AHC_ULTRA2) != 0)
				brddat |= BRDDAT5;
			else
				*sxfrctl1 |= STPWEN;
			if (bootverbose) {
				if ((ahc->flags & AHC_INT50_SPEEDFLEX) != 0)
					FUNC6("%s: 50 pin termination "
					       "Enabled\n", FUNC1(ahc));
				else
					FUNC6("%s: %sLow byte termination "
					       "Enabled\n", FUNC1(ahc),
					       enableSEC_low ? "Secondary "
							     : "");
			}
		}

		if (enablePRI_low != 0) {
			*sxfrctl1 |= STPWEN;
			if (bootverbose)
				FUNC6("%s: Primary Low Byte termination "
				       "Enabled\n", FUNC1(ahc));
		}

		/*
		 * Setup STPWEN before setting up the rest of
		 * the termination per the tech note on the U160 cards.
		 */
		FUNC3(ahc, SXFRCTL1, *sxfrctl1);

		if (enablePRI_high != 0) {
			brddat |= BRDDAT4;
			if (bootverbose)
				FUNC6("%s: Primary High Byte "
				       "termination Enabled\n",
				       FUNC1(ahc));
		}
		
		FUNC7(ahc, brddat);

	} else {
		if ((adapter_control & CFSTERM) != 0) {
			*sxfrctl1 |= STPWEN;

			if (bootverbose)
				FUNC6("%s: %sLow byte termination Enabled\n",
				       FUNC1(ahc),
				       (ahc->features & AHC_ULTRA2) ? "Primary "
								    : "");
		}

		if ((adapter_control & CFWSTERM) != 0
		 && (ahc->features & AHC_WIDE) != 0) {
			brddat |= BRDDAT6;
			if (bootverbose)
				FUNC6("%s: %sHigh byte termination Enabled\n",
				       FUNC1(ahc),
				       (ahc->features & AHC_ULTRA2)
				     ? "Secondary " : "");
		}

		/*
		 * Setup STPWEN before setting up the rest of
		 * the termination per the tech note on the U160 cards.
		 */
		FUNC3(ahc, SXFRCTL1, *sxfrctl1);

		if ((ahc->features & AHC_WIDE) != 0)
			FUNC7(ahc, brddat);
	}
	FUNC0(sd, sd->sd_MS); /* Clear CS */
}