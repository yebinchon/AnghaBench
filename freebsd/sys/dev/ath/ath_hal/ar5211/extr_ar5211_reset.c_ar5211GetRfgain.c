
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int currGain; int active; } ;
struct ath_hal_5211 {scalar_t__ ah_rfgainState; TYPE_1__ ah_gainValues; } ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_RFGAIN ;
typedef TYPE_1__ GAIN_VALUES ;


 struct ath_hal_5211* AH5211 (struct ath_hal*) ;
 int AR_PHY_PAPD_PROBE ;
 int AR_PHY_PAPD_PROBE_GAINF_S ;
 int AR_PHY_PAPD_PROBE_NEXT_TX ;
 scalar_t__ HAL_RFGAIN_INACTIVE ;
 scalar_t__ HAL_RFGAIN_NEED_CHANGE ;
 scalar_t__ HAL_RFGAIN_READ_REQUESTED ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 scalar_t__ ar5211AdjustGain (struct ath_hal*,TYPE_1__*) ;
 int ar5211InvalidGainReadback (struct ath_hal*,TYPE_1__*) ;
 scalar_t__ ar5211IsGainAdjustNeeded (struct ath_hal*,TYPE_1__*) ;
 int ar5211SetRfgain (struct ath_hal*,TYPE_1__*) ;

HAL_RFGAIN
ar5211GetRfgain(struct ath_hal *ah)
{
 struct ath_hal_5211 *ahp = AH5211(ah);
 GAIN_VALUES *gv = &ahp->ah_gainValues;
 uint32_t rddata;

 if (!gv->active)
  return HAL_RFGAIN_INACTIVE;

 if (ahp->ah_rfgainState == HAL_RFGAIN_READ_REQUESTED) {

  rddata = OS_REG_READ(ah, AR_PHY_PAPD_PROBE);

  if ((rddata & AR_PHY_PAPD_PROBE_NEXT_TX) == 0) {

   gv->currGain = rddata >> AR_PHY_PAPD_PROBE_GAINF_S;

   ahp->ah_rfgainState = HAL_RFGAIN_INACTIVE;

   if (!ar5211InvalidGainReadback(ah, gv) &&
       ar5211IsGainAdjustNeeded(ah, gv) &&
       ar5211AdjustGain(ah, gv) > 0) {




    ar5211SetRfgain(ah, gv);
    ahp->ah_rfgainState = HAL_RFGAIN_NEED_CHANGE;
   }
  }
 }
 return ahp->ah_rfgainState;
}
