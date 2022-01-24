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
typedef  int uint32_t ;
typedef  int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int ds_ctl1; int ds_ctl6; int ds_ctl0; int ds_ctl2; int /*<<< orphan*/  ds_ctl3; } ;

/* Variables and functions */
 struct ar5416_desc* FUNC0 (struct ath_desc*) ; 
 int AR_AggrLen ; 
 int AR_BurstDur ; 
 int AR_CTSEnable ; 
 int AR_IsAggr ; 
 int AR_MoreAggr ; 
 int AR_PadDelim ; 
 int AR_RTSEnable ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_XmitRate0 ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int* baDurationDelta ; 

void
FUNC5(struct ath_hal *ah, struct ath_desc *ds, u_int aggrLen,
    u_int numDelims)
{
	struct ar5416_desc *ads = FUNC0(ds);
	uint32_t flags;
	uint32_t burstDur;
	uint8_t rate;

	ads->ds_ctl1 |= (AR_IsAggr | AR_MoreAggr);

	ads->ds_ctl6 &= ~(AR_AggrLen | AR_PadDelim);
	ads->ds_ctl6 |= FUNC4(aggrLen, AR_AggrLen);
	ads->ds_ctl6 |= FUNC4(numDelims, AR_PadDelim);

	if (! FUNC1(ah)) {
		/*
		 * XXX It'd be nice if I were passed in the rate scenario
		 * at this point..
		 */
		rate = FUNC3(ads->ds_ctl3, AR_XmitRate0);
		flags = ads->ds_ctl0 & (AR_CTSEnable | AR_RTSEnable);
		/*
		 * WAR - MAC assumes normal ACK time instead of
		 * block ACK while computing packet duration.
		 * Add this delta to the burst duration in the descriptor.
		 */
		if (flags && (ads->ds_ctl1 & AR_IsAggr)) {
			burstDur = baDurationDelta[FUNC2(rate)];
			ads->ds_ctl2 &= ~(AR_BurstDur);
			ads->ds_ctl2 |= FUNC4(burstDur, AR_BurstDur);
		}
	}
}