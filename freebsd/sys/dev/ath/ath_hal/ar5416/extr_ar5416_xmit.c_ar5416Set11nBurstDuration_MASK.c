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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl1; int /*<<< orphan*/  ds_ctl2; int /*<<< orphan*/  ds_ctl3; } ;

/* Variables and functions */
 struct ar5416_desc* FUNC0 (struct ath_desc*) ; 
 int /*<<< orphan*/  AR_BurstDur ; 
 int AR_IsAggr ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_XmitDataTries0 ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* baDurationDelta ; 

void
FUNC5(struct ath_hal *ah, struct ath_desc *ds,
                                                  u_int burstDuration)
{
	struct ar5416_desc *ads = FUNC0(ds);
	uint32_t burstDur = 0;
	uint8_t rate;

	if (! FUNC1(ah)) {
		/*
		 * XXX It'd be nice if I were passed in the rate scenario
		 * at this point..
		 */
		rate = FUNC3(ads->ds_ctl3, AR_XmitDataTries0);
		/*
		 * WAR - MAC assumes normal ACK time instead of
		 * block ACK while computing packet duration.
		 * Add this delta to the burst duration in the descriptor.
		 */
		if (ads->ds_ctl1 & AR_IsAggr) {
			burstDur = baDurationDelta[FUNC2(rate)];
		}
	}

	ads->ds_ctl2 &= ~AR_BurstDur;
	ads->ds_ctl2 |= FUNC4(burstDur + burstDuration, AR_BurstDur);
}