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
struct ath_hal_5416 {int ah_btCoexMode; int ah_btCoexWLANWeight; int ah_btCoexBTWeight; int ah_btCoexMode2; int ah_btCoexFlag; scalar_t__ ah_btCoexSingleAnt; scalar_t__ ah_btCoexConfigType; int ah_btActiveGpioSelect; scalar_t__ ah_btCoexEnabled; int /*<<< orphan*/  ah_wlanActiveGpioSelect; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5416* FUNC0 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 int /*<<< orphan*/  AR9271_CLOCK_CONTROL ; 
 int /*<<< orphan*/  AR_BT_BT_WGHT ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE2 ; 
 int /*<<< orphan*/  AR_BT_COEX_WEIGHT ; 
 int /*<<< orphan*/  AR_BT_COEX_WEIGHT2 ; 
 int /*<<< orphan*/  AR_BT_WL_WGHT ; 
 int /*<<< orphan*/  AR_GPIO_PDPU ; 
 int /*<<< orphan*/  AR_MISC_MODE ; 
 int /*<<< orphan*/  AR_PCU_BT_ANT_PREVENT_RX ; 
 int /*<<< orphan*/  AR_QUIET1 ; 
 int /*<<< orphan*/  AR_QUIET1_QUIET_ACK_CTS_ENABLE ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_TPC ; 
 scalar_t__ HAL_BT_COEX_CFG_3WIRE ; 
 int HAL_BT_COEX_FLAG_LOW_ACK_PWR ; 
 int HAL_BT_COEX_HIGH_ACK_POWER ; 
 int HAL_BT_COEX_LOW_ACK_POWER ; 
 int /*<<< orphan*/  HAL_GPIO_OUTPUT_MUX_AS_TX_FRAME ; 
 int /*<<< orphan*/  HAL_GPIO_OUTPUT_MUX_AS_WLAN_ACTIVE ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct ath_hal *ah)
{
	struct ath_hal_5416 *ahp = FUNC0(ah);

	/* Program coex mode and weight registers to actually enable coex */
	FUNC6(ah, AR_BT_COEX_MODE, ahp->ah_btCoexMode);
	FUNC6(ah, AR_BT_COEX_WEIGHT,
	    FUNC7(ahp->ah_btCoexWLANWeight & 0xFFFF, AR_BT_WL_WGHT) |
	    FUNC7(ahp->ah_btCoexBTWeight & 0xFFFF, AR_BT_BT_WGHT));
	if (FUNC2(ah)) {
	FUNC6(ah, AR_BT_COEX_WEIGHT2,
	    FUNC7(ahp->ah_btCoexWLANWeight >> 16, AR_BT_WL_WGHT));
	}
	FUNC6(ah, AR_BT_COEX_MODE2, ahp->ah_btCoexMode2);

	/* Added Select GPIO5~8 instaed SPI */
	if (FUNC1(ah)) {
		uint32_t val;

		val = FUNC3(ah, AR9271_CLOCK_CONTROL);
		val &= 0xFFFFFEFF;
		FUNC6(ah, AR9271_CLOCK_CONTROL, val);
	}

	if (ahp->ah_btCoexFlag & HAL_BT_COEX_FLAG_LOW_ACK_PWR)
		FUNC6(ah, AR_TPC, HAL_BT_COEX_LOW_ACK_POWER);
	else
		FUNC6(ah, AR_TPC, HAL_BT_COEX_HIGH_ACK_POWER);

	if (ahp->ah_btCoexSingleAnt == AH_TRUE) {
		FUNC5(ah, AR_QUIET1,
		    AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);
		/* XXX should update miscMode? */
		FUNC5(ah, AR_MISC_MODE,
		    AR_PCU_BT_ANT_PREVENT_RX, 1);
	} else {
		FUNC5(ah, AR_QUIET1,
		    AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);
		/* XXX should update miscMode? */
		FUNC5(ah, AR_MISC_MODE,
		    AR_PCU_BT_ANT_PREVENT_RX, 0);
	}

	if (ahp->ah_btCoexConfigType == HAL_BT_COEX_CFG_3WIRE) {
		/* For 3-wire, configure the desired GPIO port for rx_clear */
		FUNC8(ah, ahp->ah_wlanActiveGpioSelect,
		    HAL_GPIO_OUTPUT_MUX_AS_WLAN_ACTIVE);
	} else {
		/*
		 * For 2-wire, configure the desired GPIO port
		 * for TX_FRAME output
		 */
		FUNC8(ah, ahp->ah_wlanActiveGpioSelect,
		    HAL_GPIO_OUTPUT_MUX_AS_TX_FRAME);
	}

	/*
	 * Enable a weak pull down on BT_ACTIVE.
	 * When BT device is disabled, BT_ACTIVE might be floating.
	 */
	FUNC4(ah, AR_GPIO_PDPU,
	    (0x2 << (ahp->ah_btActiveGpioSelect * 2)),
	    (0x3 << (ahp->ah_btActiveGpioSelect * 2)));

	ahp->ah_btCoexEnabled = AH_TRUE;

	return (0);
}