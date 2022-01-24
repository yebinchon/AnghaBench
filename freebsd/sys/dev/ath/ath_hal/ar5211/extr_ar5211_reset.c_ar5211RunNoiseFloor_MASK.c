#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ath_hal {int dummy; } ;
typedef  int int16_t ;
struct TYPE_4__ {TYPE_1__* ah_curchan; } ;
struct TYPE_3__ {int /*<<< orphan*/  ic_freq; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int AR_PHY_AGC_CONTROL_NF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  HAL_DEBUG_NFCAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ath_hal*) ; 

int16_t
FUNC8(struct ath_hal *ah, uint8_t runTime, int16_t startingNF)
{
	int i, searchTime;

	FUNC2(runTime <= 7);

	/* Setup  noise floor run time and starting value */
	FUNC6(ah, FUNC1(25),
		(FUNC5(ah, FUNC1(25)) & ~0xFFF) |
			 ((runTime << 9) & 0xE00) | (startingNF & 0x1FF));
	/* Calibrate the noise floor */
	FUNC6(ah, AR_PHY_AGC_CONTROL,
		FUNC5(ah, AR_PHY_AGC_CONTROL) | AR_PHY_AGC_CONTROL_NF);

	/* Compute the required amount of searchTime needed to finish NF */
	if (runTime == 0) {
		/* 8 search windows * 6.4us each */
		searchTime = 8  * 7;
	} else {
		/* 512 * runtime search windows * 6.4us each */
		searchTime = (runTime * 512)  * 7;
	}

	/*
	 * Do not read noise floor until it has been updated
	 *
	 * As a guesstimate - we may only get 1/60th the time on
	 * the air to see search windows  in a heavily congested
	 * network (40 us every 2400 us of time)
	 */
	for (i = 0; i < 60; i++) {
		if ((FUNC5(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF) == 0)
			break;
		FUNC4(searchTime);
	}
	if (i >= 60) {
		FUNC3(ah, HAL_DEBUG_NFCAL,
		    "NF with runTime %d failed to end on channel %d\n",
		    runTime, FUNC0(ah)->ah_curchan->ic_freq);
		FUNC3(ah, HAL_DEBUG_NFCAL,
		    "  PHY NF Reg state:	 0x%x\n",
		    FUNC5(ah, AR_PHY_AGC_CONTROL));
		FUNC3(ah, HAL_DEBUG_NFCAL,
		    "  PHY Active Reg state: 0x%x\n",
		    FUNC5(ah, AR_PHY_ACTIVE));
		return 0;
	}

	return FUNC7(ah);
}