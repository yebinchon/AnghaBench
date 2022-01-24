#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_7__ {int cols; int rows; } ;
struct TYPE_10__ {TYPE_1__ ah_ini_common; TYPE_1__ ah_ini_modes; } ;
struct TYPE_9__ {scalar_t__ ah_need_an_top2_fixup; } ;
struct TYPE_8__ {TYPE_1__ ah_ini_xmodes; TYPE_1__ ah_ini_txgain; TYPE_1__ ah_ini_rxgain; } ;
typedef  TYPE_1__ HAL_INI_ARRAY ;

/* Variables and functions */
 TYPE_6__* FUNC0 (struct ath_hal*) ; 
 TYPE_5__* FUNC1 (struct ath_hal*) ; 
 TYPE_4__* FUNC2 (struct ath_hal*) ; 
 int AR_AN_TOP2 ; 
 int AR_AN_TOP2_PWDCLKIND ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int AR_PHY_ADC_SERIAL_CTL ; 
 int AR_PHY_SEL_INTERNAL_ADDAC ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (TYPE_1__ const*,int,int) ; 
 scalar_t__ FUNC9 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC10 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC11 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC12 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC13 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hal*,int,int) ; 
 int FUNC16 (struct ath_hal*,TYPE_1__*,int,int) ; 

__attribute__((used)) static void
FUNC17(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	u_int modesIndex, freqIndex;
	int regWrites = 0;
	int i;
	const HAL_INI_ARRAY *ia;

	/* Setup the indices for the next set of register array writes */
	/* XXX Ignore 11n dynamic mode on the AR5416 for the moment */
	if (FUNC10(chan)) {
		freqIndex = 2;
		if (FUNC11(chan))
			modesIndex = 3;
		else if (FUNC9(chan))
			modesIndex = 5;
		else
			modesIndex = 4;
	} else {
		freqIndex = 1;
		if (FUNC11(chan) ||
		    FUNC12(chan))
			modesIndex = 2;
		else
			modesIndex = 1;
	}

	/* Set correct Baseband to analog shift setting to access analog chips. */
	FUNC15(ah, FUNC3(0), 0x00000007);
	FUNC15(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_INTERNAL_ADDAC);

	/*
	 * This is unwound because at the moment, there's a requirement
	 * for Merlin (and later, perhaps) to have a specific bit fixed
	 * in the AR_AN_TOP2 register before writing it.
	 */
	ia = &FUNC0(ah)->ah_ini_modes;
#if 0
	regWrites = ath_hal_ini_write(ah, &AH5212(ah)->ah_ini_modes,
	    modesIndex, regWrites);
#endif
	FUNC7(modesIndex < ia->cols);
	for (i = 0; i < ia->rows; i++) {
		uint32_t reg = FUNC8(ia, i, 0);
		uint32_t val = FUNC8(ia, i, modesIndex);

		if (reg == AR_AN_TOP2 && FUNC1(ah)->ah_need_an_top2_fixup)
			val &= ~AR_AN_TOP2_PWDCLKIND;

		FUNC15(ah, reg, val);

		/* Analog shift register delay seems needed for Merlin - PR kern/154220 */
		if (reg >= 0x7800 && reg < 0x7900)
			FUNC14(100);

		FUNC6(regWrites);
	}

	if (FUNC5(ah)) {
		regWrites = FUNC16(ah, &FUNC2(ah)->ah_ini_rxgain,
		    modesIndex, regWrites);
		regWrites = FUNC16(ah, &FUNC2(ah)->ah_ini_txgain,
		    modesIndex, regWrites);
	}
	/* XXX Merlin 100us delay for shift registers */
	regWrites = FUNC16(ah, &FUNC0(ah)->ah_ini_common,
	    1, regWrites);

	if (FUNC4(ah) && FUNC13(ah, chan)) {
		/* 5GHz channels w/ Fast Clock use different modal values */
		regWrites = FUNC16(ah, &FUNC2(ah)->ah_ini_xmodes,
		    modesIndex, regWrites);
	}
}