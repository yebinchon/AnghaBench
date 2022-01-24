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
struct ath_hal_5416 {scalar_t__ ah_btCoexSingleAnt; int /*<<< orphan*/  ah_btCoexEnabled; int /*<<< orphan*/  ah_wlanActiveGpioSelect; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5416* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 scalar_t__ AH_TRUE ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE2 ; 
 int /*<<< orphan*/  AR_BT_COEX_WEIGHT ; 
 int /*<<< orphan*/  AR_BT_COEX_WEIGHT2 ; 
 int AR_BT_MODE ; 
 int AR_BT_QUIET ; 
 int /*<<< orphan*/  AR_MISC_MODE ; 
 int /*<<< orphan*/  AR_PCU_BT_ANT_PREVENT_RX ; 
 int /*<<< orphan*/  AR_QUIET1 ; 
 int /*<<< orphan*/  AR_QUIET1_QUIET_ACK_CTS_ENABLE ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  HAL_GPIO_OUTPUT_MUX_AS_OUTPUT ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct ath_hal *ah)
{
	struct ath_hal_5416 *ahp = FUNC0(ah);

	/* Always drive rx_clear_external output as 0 */
	FUNC7(ah, ahp->ah_wlanActiveGpioSelect, 0);
	FUNC6(ah, ahp->ah_wlanActiveGpioSelect,
	    HAL_GPIO_OUTPUT_MUX_AS_OUTPUT);

	if (FUNC1(ah)) {
		/*
		 * Set wlanActiveGpio to input when disabling BT-COEX to
		 * reduce power consumption
		 */
		FUNC5(ah, ahp->ah_wlanActiveGpioSelect);
	}

	if (ahp->ah_btCoexSingleAnt == AH_TRUE) {
		FUNC3(ah, AR_QUIET1, AR_QUIET1_QUIET_ACK_CTS_ENABLE,
		    1);
		FUNC3(ah, AR_MISC_MODE, AR_PCU_BT_ANT_PREVENT_RX,
		    0);
	}

	FUNC4(ah, AR_BT_COEX_MODE, AR_BT_QUIET | AR_BT_MODE);
	FUNC4(ah, AR_BT_COEX_WEIGHT, 0);
	if (FUNC2(ah))
		FUNC4(ah, AR_BT_COEX_WEIGHT2, 0);
	FUNC4(ah, AR_BT_COEX_MODE2, 0);

	ahp->ah_btCoexEnabled = AH_FALSE;
}