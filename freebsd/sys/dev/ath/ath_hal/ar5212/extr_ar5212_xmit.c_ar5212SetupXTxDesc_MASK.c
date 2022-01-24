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
typedef  int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5212_desc {int ds_ctl2; int ds_ctl3; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_TRUE ; 
 struct ar5212_desc* FUNC0 (struct ath_desc*) ; 
 int AR_DurUpdateEna ; 
 int /*<<< orphan*/  AR_XmitDataTries1 ; 
 int /*<<< orphan*/  AR_XmitDataTries2 ; 
 int /*<<< orphan*/  AR_XmitDataTries3 ; 
 int AR_XmitRate1_S ; 
 int AR_XmitRate2_S ; 
 int AR_XmitRate3_S ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

HAL_BOOL
FUNC4(struct ath_hal *ah, struct ath_desc *ds,
	u_int txRate1, u_int txTries1,
	u_int txRate2, u_int txTries2,
	u_int txRate3, u_int txTries3)
{
	struct ar5212_desc *ads = FUNC0(ds);

	if (txTries1) {
		FUNC1(FUNC3(txRate1));
		ads->ds_ctl2 |= FUNC2(txTries1, AR_XmitDataTries1)
			     |  AR_DurUpdateEna
			     ;
		ads->ds_ctl3 |= (txRate1 << AR_XmitRate1_S);
	}
	if (txTries2) {
		FUNC1(FUNC3(txRate2));
		ads->ds_ctl2 |= FUNC2(txTries2, AR_XmitDataTries2)
			     |  AR_DurUpdateEna
			     ;
		ads->ds_ctl3 |= (txRate2 << AR_XmitRate2_S);
	}
	if (txTries3) {
		FUNC1(FUNC3(txRate3));
		ads->ds_ctl2 |= FUNC2(txTries3, AR_XmitDataTries3)
			     |  AR_DurUpdateEna
			     ;
		ads->ds_ctl3 |= (txRate3 << AR_XmitRate3_S);
	}
	return AH_TRUE;
}