
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct cal_data_op_loop_ar9287 {scalar_t__** pwrPdg; } ;
struct ath_hal {int dummy; } ;
typedef int int8_t ;
struct TYPE_3__ {int synth_center; } ;
typedef scalar_t__ HAL_BOOL ;
typedef TYPE_1__ CHAN_CENTERS ;


 scalar_t__ AR5416_BCHAN_UNUSED ;
 scalar_t__ FREQ2FBIN (int ,int ) ;
 int IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 int ar5416GetChannelCenters (struct ath_hal*,struct ieee80211_channel const*,TYPE_1__*) ;
 scalar_t__ ath_ee_getLowerUpperIndex (scalar_t__,scalar_t__*,size_t,size_t*,size_t*) ;

void
ar9287olcGetTxGainIndex(struct ath_hal *ah,
    const struct ieee80211_channel *chan,
    struct cal_data_op_loop_ar9287 *pRawDatasetOpLoop,
    uint8_t *pCalChans, uint16_t availPiers, int8_t *pPwr)
{
        uint16_t idxL = 0, idxR = 0, numPiers;
        HAL_BOOL match;
        CHAN_CENTERS centers;

        ar5416GetChannelCenters(ah, chan, &centers);

        for (numPiers = 0; numPiers < availPiers; numPiers++) {
                if (pCalChans[numPiers] == AR5416_BCHAN_UNUSED)
                        break;
        }

        match = ath_ee_getLowerUpperIndex(
                (uint8_t)FREQ2FBIN(centers.synth_center, IEEE80211_IS_CHAN_2GHZ(chan)),
                pCalChans, numPiers, &idxL, &idxR);

        if (match) {
                *pPwr = (int8_t) pRawDatasetOpLoop[idxL].pwrPdg[0][0];
        } else {
                *pPwr = ((int8_t) pRawDatasetOpLoop[idxL].pwrPdg[0][0] +
                         (int8_t) pRawDatasetOpLoop[idxR].pwrPdg[0][0])/2;
        }
}
