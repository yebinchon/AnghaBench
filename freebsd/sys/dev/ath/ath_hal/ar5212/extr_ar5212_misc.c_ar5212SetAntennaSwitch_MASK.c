#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_channel {int dummy; } ;
struct ath_hal_5212 {int ah_diversity; scalar_t__ ah_antControl; int /*<<< orphan*/  ah_phyPowerOn; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ah_curchan; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;
typedef  scalar_t__ HAL_ANT_SETTING ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 struct ieee80211_channel const* AH_NULL ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 scalar_t__ HAL_ANT_VARIABLE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,scalar_t__,struct ieee80211_channel const*) ; 

HAL_BOOL
FUNC3(struct ath_hal *ah, HAL_ANT_SETTING setting)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	const struct ieee80211_channel *chan = FUNC1(ah)->ah_curchan;

	if (!ahp->ah_phyPowerOn || chan == AH_NULL) {
		/* PHY powered off, just stash settings */
		ahp->ah_antControl = setting;
		ahp->ah_diversity = (setting == HAL_ANT_VARIABLE);
		return AH_TRUE;
	}
	return FUNC2(ah, setting, chan);
}