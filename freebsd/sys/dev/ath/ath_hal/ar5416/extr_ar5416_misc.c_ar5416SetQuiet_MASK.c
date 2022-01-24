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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {scalar_t__ ah_sw_beacon_response_time; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef  int /*<<< orphan*/  HAL_STATUS ;
typedef  int HAL_QUIET_FLAG ;

/* Variables and functions */
 int /*<<< orphan*/  AR_NEXT_QUIET ; 
 int /*<<< orphan*/  AR_QUIET1 ; 
 int /*<<< orphan*/  AR_QUIET1_QUIET_ACK_CTS_ENABLE ; 
 int /*<<< orphan*/  AR_QUIET2 ; 
 int /*<<< orphan*/  AR_QUIET2_QUIET_DUR ; 
 int /*<<< orphan*/  AR_QUIET_PERIOD ; 
 int /*<<< orphan*/  AR_TIMER_MODE ; 
 int /*<<< orphan*/  AR_TIMER_MODE_QUIET ; 
 int /*<<< orphan*/  AR_TSF_L32 ; 
 int /*<<< orphan*/  HAL_OK ; 
 int HAL_QUIET_ADD_CURRENT_TSF ; 
 int HAL_QUIET_ADD_SWBA_RESP_TIME ; 
 int HAL_QUIET_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

HAL_STATUS
FUNC7(struct ath_hal *ah, uint32_t period, uint32_t duration,
    uint32_t nextStart, HAL_QUIET_FLAG flag)
{
	uint32_t period_us = FUNC6(period); /* convert to us unit */
	uint32_t nextStart_us = FUNC6(nextStart); /* convert to us unit */
	if (flag & HAL_QUIET_ENABLE) {
		if ((!nextStart) || (flag & HAL_QUIET_ADD_CURRENT_TSF)) {
			/* Add the nextStart offset to the current TSF */
			nextStart_us += FUNC1(ah, AR_TSF_L32);
		}
		if (flag & HAL_QUIET_ADD_SWBA_RESP_TIME) {
			nextStart_us += ah->ah_config.ah_sw_beacon_response_time;
		}
		FUNC2(ah, AR_QUIET1, AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);
		FUNC4(ah, AR_QUIET2, FUNC5(duration, AR_QUIET2_QUIET_DUR));
		FUNC4(ah, AR_QUIET_PERIOD, period_us);
		FUNC4(ah, AR_NEXT_QUIET, nextStart_us);
		FUNC3(ah, AR_TIMER_MODE, AR_TIMER_MODE_QUIET);
	} else {
		FUNC0(ah, AR_TIMER_MODE, AR_TIMER_MODE_QUIET);
	}
	return HAL_OK;
}