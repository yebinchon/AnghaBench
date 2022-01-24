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
struct ath_hal_5212 {TYPE_1__* ah_rfHal; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* setChannel ) (struct ath_hal*,struct ieee80211_channel const*) ;} ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,struct ieee80211_channel const*) ; 

HAL_BOOL
FUNC2(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);

	/* Change the synth */
	if (!ahp->ah_rfHal->setChannel(ah, chan))
		return AH_FALSE;
	return AH_TRUE;
}