#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int currGain; int /*<<< orphan*/  active; } ;
struct ath_hal_5211 {scalar_t__ ah_rfgainState; TYPE_1__ ah_gainValues; } ;
struct ath_hal {int dummy; } ;
typedef  scalar_t__ HAL_RFGAIN ;
typedef  TYPE_1__ GAIN_VALUES ;

/* Variables and functions */
 struct ath_hal_5211* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_PAPD_PROBE ; 
 int AR_PHY_PAPD_PROBE_GAINF_S ; 
 int AR_PHY_PAPD_PROBE_NEXT_TX ; 
 scalar_t__ HAL_RFGAIN_INACTIVE ; 
 scalar_t__ HAL_RFGAIN_NEED_CHANGE ; 
 scalar_t__ HAL_RFGAIN_READ_REQUESTED ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ath_hal*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct ath_hal*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,TYPE_1__*) ; 

HAL_RFGAIN
FUNC6(struct ath_hal *ah)
{
	struct ath_hal_5211 *ahp = FUNC0(ah);
	GAIN_VALUES *gv = &ahp->ah_gainValues;
	uint32_t rddata;

	if (!gv->active)
		return HAL_RFGAIN_INACTIVE;

	if (ahp->ah_rfgainState == HAL_RFGAIN_READ_REQUESTED) {
		/* Caller had asked to setup a new reading. Check it. */
		rddata = FUNC1(ah, AR_PHY_PAPD_PROBE);

		if ((rddata & AR_PHY_PAPD_PROBE_NEXT_TX) == 0) {
			/* bit got cleared, we have a new reading. */
			gv->currGain = rddata >> AR_PHY_PAPD_PROBE_GAINF_S;
			/* inactive by default */
			ahp->ah_rfgainState = HAL_RFGAIN_INACTIVE;

			if (!FUNC3(ah, gv) &&
			    FUNC4(ah, gv) &&
			    FUNC2(ah, gv) > 0) {
				/*
				 * Change needed. Copy ladder info
				 * into eeprom info.
				 */
				FUNC5(ah, gv);
				ahp->ah_rfgainState = HAL_RFGAIN_NEED_CHANGE;
			}
		}
	}
	return ahp->ah_rfgainState;
}