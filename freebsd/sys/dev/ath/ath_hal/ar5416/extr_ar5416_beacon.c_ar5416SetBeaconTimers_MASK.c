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
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_hal_5212 {int ah_beaconInterval; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int bt_nexttbtt; int bt_nextatim; int bt_intval; scalar_t__ bt_flags; int /*<<< orphan*/  bt_nextswba; int /*<<< orphan*/  bt_nextdba; } ;
typedef  TYPE_1__ HAL_BEACON_TIMERS ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR5416_BEACON_PERIOD ; 
 int AR_BEACON_RESET_TSF ; 
 int /*<<< orphan*/  AR_DBA_PERIOD ; 
 int /*<<< orphan*/  AR_NDP_PERIOD ; 
 int /*<<< orphan*/  AR_NEXT_DBA ; 
 int /*<<< orphan*/  AR_NEXT_NDP ; 
 int /*<<< orphan*/  AR_NEXT_SWBA ; 
 int /*<<< orphan*/  AR_NEXT_TBTT ; 
 int /*<<< orphan*/  AR_SWBA_PERIOD ; 
 int /*<<< orphan*/  AR_TIMER_MODE ; 
 int AR_TIMER_MODE_DBA ; 
 int AR_TIMER_MODE_SWBA ; 
 int AR_TIMER_MODE_TBTT ; 
 int HAL_BEACON_PERIOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 

void
FUNC6(struct ath_hal *ah, const HAL_BEACON_TIMERS *bt)
{
	uint32_t bperiod;
	struct ath_hal_5212 *ahp = FUNC0(ah);

	FUNC3(ah, AR_NEXT_TBTT, FUNC4(bt->bt_nexttbtt));
	FUNC3(ah, AR_NEXT_DBA, FUNC1(bt->bt_nextdba));
	FUNC3(ah, AR_NEXT_SWBA, FUNC1(bt->bt_nextswba));
	FUNC3(ah, AR_NEXT_NDP, FUNC4(bt->bt_nextatim));

	bperiod = FUNC4(bt->bt_intval & HAL_BEACON_PERIOD);
	ahp->ah_beaconInterval = bt->bt_intval & HAL_BEACON_PERIOD;
	FUNC3(ah, AR5416_BEACON_PERIOD, bperiod);
	FUNC3(ah, AR_DBA_PERIOD, bperiod);
	FUNC3(ah, AR_SWBA_PERIOD, bperiod);
	FUNC3(ah, AR_NDP_PERIOD, bperiod);

	/*
	 * Reset TSF if required.
	 */
	if (bt->bt_intval & AR_BEACON_RESET_TSF)
		FUNC5(ah);

	/* enable timers */
	/* NB: flags == 0 handled specially for backwards compatibility */
	FUNC2(ah, AR_TIMER_MODE,
	    bt->bt_flags != 0 ? bt->bt_flags :
		AR_TIMER_MODE_TBTT | AR_TIMER_MODE_DBA | AR_TIMER_MODE_SWBA);
}