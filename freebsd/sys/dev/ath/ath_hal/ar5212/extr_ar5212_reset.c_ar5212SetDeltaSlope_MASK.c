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
typedef  unsigned long uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_TIMING3 ; 
 int /*<<< orphan*/  AR_PHY_TIMING3_DSC_EXP ; 
 int /*<<< orphan*/  AR_PHY_TIMING3_DSC_MAN ; 
 unsigned long COEF_SCALE_S ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 unsigned long INIT_CLOCKMHZSCALED ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (struct ath_hal*,struct ieee80211_channel const*) ; 

void
FUNC6(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
#define COEF_SCALE_S 24
#define INIT_CLOCKMHZSCALED	0x64000000
	uint16_t freq = FUNC5(ah, chan);
	unsigned long coef_scaled, coef_exp, coef_man, ds_coef_exp, ds_coef_man;
	unsigned long clockMhzScaled = INIT_CLOCKMHZSCALED;

	if (FUNC3(chan))
		clockMhzScaled *= 2;
	/* half and quarter rate can divide the scaled clock by 2 or 4 respectively */
	/* scale for selected channel bandwidth */ 
	if (FUNC1(chan)) {
		clockMhzScaled = clockMhzScaled >> 1;
	} else if (FUNC2(chan)) {
		clockMhzScaled = clockMhzScaled >> 2;
	} 

	/*
	 * ALGO -> coef = 1e8/fcarrier*fclock/40;
	 * scaled coef to provide precision for this floating calculation 
	 */
	coef_scaled = clockMhzScaled / freq;

	/*
	 * ALGO -> coef_exp = 14-floor(log2(coef)); 
	 * floor(log2(x)) is the highest set bit position
	 */
	for (coef_exp = 31; coef_exp > 0; coef_exp--)
		if ((coef_scaled >> coef_exp) & 0x1)
			break;
	/* A coef_exp of 0 is a legal bit position but an unexpected coef_exp */
	FUNC0(coef_exp);
	coef_exp = 14 - (coef_exp - COEF_SCALE_S);

	/*
	 * ALGO -> coef_man = floor(coef* 2^coef_exp+0.5);
	 * The coefficient is already shifted up for scaling
	 */
	coef_man = coef_scaled + (1 << (COEF_SCALE_S - coef_exp - 1));
	ds_coef_man = coef_man >> (COEF_SCALE_S - coef_exp);
	ds_coef_exp = coef_exp - 16;

	FUNC4(ah, AR_PHY_TIMING3,
		AR_PHY_TIMING3_DSC_MAN, ds_coef_man);
	FUNC4(ah, AR_PHY_TIMING3,
		AR_PHY_TIMING3_DSC_EXP, ds_coef_exp);
#undef INIT_CLOCKMHZSCALED
#undef COEF_SCALE_S
}