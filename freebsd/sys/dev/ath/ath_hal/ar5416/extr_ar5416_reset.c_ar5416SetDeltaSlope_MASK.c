#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int synth_center; } ;
typedef  TYPE_1__ CHAN_CENTERS ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_HALFGI ; 
 int /*<<< orphan*/  AR_PHY_HALFGI_DSC_EXP ; 
 int /*<<< orphan*/  AR_PHY_HALFGI_DSC_MAN ; 
 int /*<<< orphan*/  AR_PHY_TIMING3 ; 
 int /*<<< orphan*/  AR_PHY_TIMING3_DSC_EXP ; 
 int /*<<< orphan*/  AR_PHY_TIMING3_DSC_MAN ; 
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 int INIT_CLOCKMHZSCALED ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,struct ieee80211_channel const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int,int*,int*) ; 

void
FUNC6(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
#define INIT_CLOCKMHZSCALED	0x64000000
	uint32_t coef_scaled, ds_coef_exp, ds_coef_man;
	uint32_t clockMhzScaled;

	CHAN_CENTERS centers;

	/* half and quarter rate can divide the scaled clock by 2 or 4 respectively */
	/* scale for selected channel bandwidth */ 
	clockMhzScaled = INIT_CLOCKMHZSCALED;
	if (FUNC2(chan))
		clockMhzScaled <<= 1;
	else if (FUNC0(chan))
		clockMhzScaled >>= 1;
	else if (FUNC1(chan))
		clockMhzScaled >>= 2;

	/*
	 * ALGO -> coef = 1e8/fcarrier*fclock/40;
	 * scaled coef to provide precision for this floating calculation 
	 */
	FUNC4(ah, chan, &centers);
	coef_scaled = clockMhzScaled / centers.synth_center;		

 	FUNC5(ah, coef_scaled, &ds_coef_man, &ds_coef_exp);

	FUNC3(ah, AR_PHY_TIMING3,
		AR_PHY_TIMING3_DSC_MAN, ds_coef_man);
	FUNC3(ah, AR_PHY_TIMING3,
		AR_PHY_TIMING3_DSC_EXP, ds_coef_exp);

        /*
         * For Short GI,
         * scaled coeff is 9/10 that of normal coeff
         */ 
        coef_scaled = (9 * coef_scaled)/10;

        FUNC5(ah, coef_scaled, &ds_coef_man, &ds_coef_exp);

        /* for short gi */
        FUNC3(ah, AR_PHY_HALFGI,
                AR_PHY_HALFGI_DSC_MAN, ds_coef_man);
        FUNC3(ah, AR_PHY_HALFGI,
                AR_PHY_HALFGI_DSC_EXP, ds_coef_exp);	
#undef INIT_CLOCKMHZSCALED
}