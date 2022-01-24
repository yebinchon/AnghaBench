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
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5416_desc {int /*<<< orphan*/  ds_ctl2; int /*<<< orphan*/  ds_ctl3; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_TRUE ; 
 struct ar5416_desc* FUNC0 (struct ath_desc const*) ; 
 int /*<<< orphan*/  AR_XmitDataTries0 ; 
 int /*<<< orphan*/  AR_XmitDataTries1 ; 
 int /*<<< orphan*/  AR_XmitDataTries2 ; 
 int /*<<< orphan*/  AR_XmitDataTries3 ; 
 int /*<<< orphan*/  AR_XmitRate0 ; 
 int /*<<< orphan*/  AR_XmitRate1 ; 
 int /*<<< orphan*/  AR_XmitRate2 ; 
 int /*<<< orphan*/  AR_XmitRate3 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC2(struct ath_hal *ah, const struct ath_desc *ds0, int *rates, int *tries)
{
	const struct ar5416_desc *ads = FUNC0(ds0);

	rates[0] = FUNC1(ads->ds_ctl3, AR_XmitRate0);
	rates[1] = FUNC1(ads->ds_ctl3, AR_XmitRate1);
	rates[2] = FUNC1(ads->ds_ctl3, AR_XmitRate2);
	rates[3] = FUNC1(ads->ds_ctl3, AR_XmitRate3);

	tries[0] = FUNC1(ads->ds_ctl2, AR_XmitDataTries0);
	tries[1] = FUNC1(ads->ds_ctl2, AR_XmitDataTries1);
	tries[2] = FUNC1(ads->ds_ctl2, AR_XmitDataTries2);
	tries[3] = FUNC1(ads->ds_ctl2, AR_XmitDataTries3);

	return AH_TRUE;
}