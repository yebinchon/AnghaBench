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
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_PHY_ADC_CTL ; 
 int /*<<< orphan*/  AR_PHY_ADC_CTL_OFF_PWDADC ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_CAL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_FLTR_CAL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_CTL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_FC_DYN2040_EN ; 
 int /*<<< orphan*/  AR_PHY_PARALLEL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TPCRG1 ; 
 int /*<<< orphan*/  AR_PHY_TPCRG1_PD_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TURBO ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HAL_DEBUG_PERCAL ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HAL_BOOL
FUNC5(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	FUNC3(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
	if (FUNC1(chan)) {
		FUNC3(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
		FUNC3(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
		FUNC2(ah, AR_PHY_AGC_CONTROL,
			    AR_PHY_AGC_CONTROL_FLTR_CAL);
		FUNC2(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
		FUNC3(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
		if (!FUNC4(ah, AR_PHY_AGC_CONTROL,
				  AR_PHY_AGC_CONTROL_CAL, 0)) {
			FUNC0(ah, HAL_DEBUG_PERCAL,
				"offset calibration failed to complete in 1ms; noisy environment?\n");
			return AH_FALSE;
		}
		FUNC2(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
		FUNC2(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
		FUNC2(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
	}
	FUNC2(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
	FUNC3(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);
	FUNC3(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
	FUNC3(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
	if (!FUNC4(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL,
			  0)) {
		FUNC0(ah, HAL_DEBUG_PERCAL,
			"offset calibration failed to complete in 1ms; noisy environment?\n");
		return AH_FALSE;
	}

	FUNC3(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
	FUNC2(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
	FUNC2(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);

	return AH_TRUE;
}