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
typedef  scalar_t__ uint8_t ;
typedef  size_t uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct cal_data_op_loop_ar9287 {scalar_t__** pwrPdg; } ;
struct ath_hal {int dummy; } ;
typedef  int int8_t ;
struct TYPE_3__ {int /*<<< orphan*/  synth_center; } ;
typedef  scalar_t__ HAL_BOOL ;
typedef  TYPE_1__ CHAN_CENTERS ;

/* Variables and functions */
 scalar_t__ AR5416_BCHAN_UNUSED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,struct ieee80211_channel const*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*,size_t,size_t*,size_t*) ; 

void
FUNC4(struct ath_hal *ah,
    const struct ieee80211_channel *chan,
    struct cal_data_op_loop_ar9287 *pRawDatasetOpLoop,
    uint8_t *pCalChans,  uint16_t availPiers, int8_t *pPwr)
{
        uint16_t idxL = 0, idxR = 0, numPiers;
        HAL_BOOL match;
        CHAN_CENTERS centers;

        FUNC2(ah, chan, &centers);

        for (numPiers = 0; numPiers < availPiers; numPiers++) {
                if (pCalChans[numPiers] == AR5416_BCHAN_UNUSED)
                        break;
        }

        match = FUNC3(
                (uint8_t)FUNC0(centers.synth_center, FUNC1(chan)),
                pCalChans, numPiers, &idxL, &idxR);

        if (match) {
                *pPwr = (int8_t) pRawDatasetOpLoop[idxL].pwrPdg[0][0];
        } else {
                *pPwr = ((int8_t) pRawDatasetOpLoop[idxL].pwrPdg[0][0] +
                         (int8_t) pRawDatasetOpLoop[idxR].pwrPdg[0][0])/2;
        }
}