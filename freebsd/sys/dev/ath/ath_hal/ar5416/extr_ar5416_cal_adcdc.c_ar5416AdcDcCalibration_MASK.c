#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ath_hal {int dummy; } ;
struct ar5416PerCal {int (* totalAdcDcOffsetIOddPhase ) (int) ;int (* totalAdcDcOffsetIEvenPhase ) (int) ;int (* totalAdcDcOffsetQOddPhase ) (int) ;int (* totalAdcDcOffsetQEvenPhase ) (int) ;TYPE_1__* cal_curr; } ;
typedef  int int32_t ;
struct TYPE_6__ {struct ar5416PerCal ah_cal; } ;
struct TYPE_5__ {int calCountMax; int calNumSamples; } ;
struct TYPE_4__ {TYPE_2__* calData; } ;
typedef  TYPE_2__ HAL_PERCAL_DATA ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  HAL_DEBUG_PERCAL ; 
 int FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 

void
FUNC11(struct ath_hal *ah, uint8_t numChains)
{
	struct ar5416PerCal *cal = &FUNC0(ah)->ah_cal;
	const HAL_PERCAL_DATA *calData = cal->cal_curr->calData;
	uint32_t numSamples;
	int i;

	numSamples = (1 << (calData->calCountMax + 5)) * calData->calNumSamples;
	for (i = 0; i < numChains; i++) {
		uint32_t iOddMeasOffset = cal->totalAdcDcOffsetIOddPhase(i);
		uint32_t iEvenMeasOffset = cal->totalAdcDcOffsetIEvenPhase(i);
		int32_t qOddMeasOffset = cal->totalAdcDcOffsetQOddPhase(i);
		int32_t qEvenMeasOffset = cal->totalAdcDcOffsetQEvenPhase(i);
		int32_t qDcMismatch, iDcMismatch;
		uint32_t val;

		FUNC3(ah, HAL_DEBUG_PERCAL,
		    "Starting ADC DC Offset Cal for Chain %d\n", i);

		FUNC3(ah, HAL_DEBUG_PERCAL, " pwr_meas_odd_i = %d\n",
		    iOddMeasOffset);
		FUNC3(ah, HAL_DEBUG_PERCAL, " pwr_meas_even_i = %d\n",
		    iEvenMeasOffset);
		FUNC3(ah, HAL_DEBUG_PERCAL, " pwr_meas_odd_q = %d\n",
		    qOddMeasOffset);
		FUNC3(ah, HAL_DEBUG_PERCAL, " pwr_meas_even_q = %d\n",
		    qEvenMeasOffset);

		FUNC2(numSamples);

		iDcMismatch = (((iEvenMeasOffset - iOddMeasOffset) * 2) /
		    numSamples) & 0x1ff;
		qDcMismatch = (((qOddMeasOffset - qEvenMeasOffset) * 2) /
		    numSamples) & 0x1ff;
		FUNC3(ah, HAL_DEBUG_PERCAL,
		    " dc_offset_mismatch_i = 0x%08x\n", iDcMismatch);
		FUNC3(ah, HAL_DEBUG_PERCAL,
		    " dc_offset_mismatch_q = 0x%08x\n", qDcMismatch);

		val = FUNC4(ah, FUNC1(i));
		val &= 0xc0000fff;
		val |= (qDcMismatch << 12) | (iDcMismatch << 21);
		FUNC6(ah, FUNC1(i), val); 

		FUNC3(ah, HAL_DEBUG_PERCAL,
		    "ADC DC Offset Cal done for Chain %d\n", i);
	}
	FUNC5(ah, FUNC1(0),
	    AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE);
}