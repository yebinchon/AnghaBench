#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ah_rfHal; int /*<<< orphan*/  ah_ini_common; int /*<<< orphan*/  ah_ini_modes; } ;
struct TYPE_5__ {int /*<<< orphan*/  ah_ini_addac; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* writeRegs ) (struct ath_hal*,int,int,int) ;} ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_PHY_ADC_SERIAL_CTL ; 
 int AR_PHY_SEL_EXTERNAL_RADIO ; 
 int AR_PHY_SEL_INTERNAL_ADDAC ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC6 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC7 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*,struct ieee80211_channel const*) ; 
 int FUNC10 (struct ath_hal*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hal*,int,int,int) ; 

__attribute__((used)) static void
FUNC12(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	u_int modesIndex, freqIndex;
	int regWrites = 0;

	/* Setup the indices for the next set of register array writes */
	/* XXX Ignore 11n dynamic mode on the AR5416 for the moment */
	if (FUNC5(chan)) {
		freqIndex = 2;
		if (FUNC6(chan))
			modesIndex = 3;
		else if (FUNC4(chan))
			modesIndex = 5;
		else
			modesIndex = 4;
	} else {
		freqIndex = 1;
		if (FUNC6(chan) ||
		    FUNC7(chan))
			modesIndex = 2;
		else
			modesIndex = 1;
	}

	/* Set correct Baseband to analog shift setting to access analog chips. */
	FUNC8(ah, FUNC2(0), 0x00000007);

	/*
	 * Write addac shifts
	 */
	FUNC8(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_EXTERNAL_RADIO);

	/* NB: only required for Sowl */
	if (FUNC3(ah))
		FUNC9(ah, chan);

	regWrites = FUNC10(ah, &FUNC1(ah)->ah_ini_addac, 1,
	    regWrites);
	FUNC8(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_INTERNAL_ADDAC);

	regWrites = FUNC10(ah, &FUNC0(ah)->ah_ini_modes,
	    modesIndex, regWrites);
	regWrites = FUNC10(ah, &FUNC0(ah)->ah_ini_common,
	    1, regWrites);

	/* XXX updated regWrites? */
	FUNC0(ah)->ah_rfHal->writeRegs(ah, modesIndex, freqIndex, regWrites);
}