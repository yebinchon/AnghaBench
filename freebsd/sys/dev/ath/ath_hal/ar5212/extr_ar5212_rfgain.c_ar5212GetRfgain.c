
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ currGain; int active; } ;
struct ath_hal_5212 {scalar_t__ ah_rfgainState; int ah_bIQCalibration; int ah_cwCalRequire; int ah_phyPowerOn; TYPE_2__ ah_gainValues; } ;
struct ath_hal {scalar_t__ ah_magic; } ;
struct TYPE_9__ {scalar_t__ ah_phyRev; TYPE_1__* ah_eeprom; } ;
struct TYPE_7__ {scalar_t__ ee_cckOfdmGainDelta; } ;
typedef scalar_t__ HAL_RFGAIN ;
typedef TYPE_1__ HAL_EEPROM ;
typedef TYPE_2__ GAIN_VALUES ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 TYPE_6__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 scalar_t__ AR5212_MAGIC ;
 scalar_t__ AR_PHY_CHIP_ID_REV_2 ;
 int AR_PHY_PAPD_PROBE ;
 scalar_t__ AR_PHY_PAPD_PROBE_GAINF_S ;
 scalar_t__ AR_PHY_PAPD_PROBE_NEXT_TX ;
 int AR_PHY_PAPD_PROBE_TYPE ;
 scalar_t__ AR_PHY_PAPD_PROBE_TYPE_CCK ;
 int HALASSERT (int) ;
 scalar_t__ HAL_RFGAIN_INACTIVE ;
 scalar_t__ HAL_RFGAIN_NEED_CHANGE ;
 scalar_t__ HAL_RFGAIN_READ_REQUESTED ;
 int IQ_CAL_INACTIVE ;
 int IS_RAD5112_ANY (struct ath_hal*) ;
 scalar_t__ IS_RADX112_REV2 (struct ath_hal*) ;
 scalar_t__ MS (scalar_t__,int ) ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 scalar_t__ PHY_PROBE_CCK_CORRECTION ;
 scalar_t__ ar5212AdjustGain (struct ath_hal*,TYPE_2__*) ;
 scalar_t__ ar5212GetGainFCorrection (struct ath_hal*) ;
 int ar5212InvalidGainReadback (struct ath_hal*,TYPE_2__*) ;
 scalar_t__ ar5212IsGainAdjustNeeded (struct ath_hal*,TYPE_2__*) ;

HAL_RFGAIN
ar5212GetRfgain(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 GAIN_VALUES *gv = &ahp->ah_gainValues;
 uint32_t rddata, probeType;


 if (!gv->active || !ahp->ah_phyPowerOn)
  return HAL_RFGAIN_INACTIVE;

 if (ahp->ah_rfgainState == HAL_RFGAIN_READ_REQUESTED) {

  rddata = OS_REG_READ(ah, AR_PHY_PAPD_PROBE);

  if ((rddata & AR_PHY_PAPD_PROBE_NEXT_TX) == 0) {

   gv->currGain = rddata >> AR_PHY_PAPD_PROBE_GAINF_S;
   probeType = MS(rddata, AR_PHY_PAPD_PROBE_TYPE);
   if (probeType == AR_PHY_PAPD_PROBE_TYPE_CCK) {
    const HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;

    HALASSERT(IS_RAD5112_ANY(ah));
    HALASSERT(ah->ah_magic == AR5212_MAGIC);
    if (AH_PRIVATE(ah)->ah_phyRev >= AR_PHY_CHIP_ID_REV_2)
     gv->currGain += ee->ee_cckOfdmGainDelta;
    else
     gv->currGain += PHY_PROBE_CCK_CORRECTION;
   }
   if (IS_RADX112_REV2(ah)) {
    uint32_t correct = ar5212GetGainFCorrection(ah);
    if (gv->currGain >= correct)
     gv->currGain -= correct;
    else
     gv->currGain = 0;
   }

   ahp->ah_rfgainState = HAL_RFGAIN_INACTIVE;

   if (!ar5212InvalidGainReadback(ah, gv) &&
       ar5212IsGainAdjustNeeded(ah, gv) &&
       ar5212AdjustGain(ah, gv) > 0) {




    ahp->ah_rfgainState = HAL_RFGAIN_NEED_CHANGE;

    ahp->ah_cwCalRequire = AH_TRUE;

    ahp->ah_bIQCalibration = IQ_CAL_INACTIVE;
   }
  }
 }
 return ahp->ah_rfgainState;
}
