
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int halLow2GhzChan; int halHigh2GhzChan; int halLow5GhzChan; int halHigh5GhzChan; int halNumMRRetries; int halNumTxMaps; int halKeyCacheSize; int halRxTstampPrecision; int halTxTstampPrecision; int halIntrMask; void* halHasRxSelfLinkedTail; void* hal4kbSplitTransSupport; void* halRfSilentSupport; void* halUseCombinedRadarRssi; void* halChanQuarterRate; void* halChanHalfRate; int halTotalQueues; void* halVEOLSupport; void* halPSPollBroken; void* halSleepAfterBeaconBroken; void* halChanSpreadSupport; int halWirelessModes; } ;
struct ath_hal_private {void* ah_rxornIsFatal; void* ah_rfkillEnabled; int ah_rfsilent; TYPE_1__ ah_caps; } ;
struct ath_hal {int dummy; } ;
typedef TYPE_1__ HAL_CAPABILITIES ;
typedef void* HAL_BOOL ;


 void* AH_FALSE ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 void* AH_TRUE ;
 int AR_EEP_AMODE ;
 int AR_EEP_BMODE ;
 int AR_EEP_RFKILL ;
 int AR_EEP_RFSILENT ;
 int AR_EEP_TURBO5DISABLE ;
 int HAL_INT_BNR ;
 int HAL_INT_COMMON ;
 int HAL_INT_FATAL ;
 int HAL_INT_RX ;
 int HAL_INT_TIM ;
 int HAL_INT_TX ;
 int HAL_MODE_11A ;
 int HAL_MODE_11B ;
 int HAL_MODE_TURBO ;
 int HAL_NUM_TX_QUEUES ;
 scalar_t__ HAL_OK ;
 scalar_t__ ath_hal_eepromGet (struct ath_hal*,int ,int *) ;
 scalar_t__ ath_hal_eepromGetFlag (struct ath_hal*,int ) ;

__attribute__((used)) static HAL_BOOL
ar5211FillCapabilityInfo(struct ath_hal *ah)
{
 struct ath_hal_private *ahpriv = AH_PRIVATE(ah);
 HAL_CAPABILITIES *pCap = &ahpriv->ah_caps;


 pCap->halWirelessModes = 0;
 if (ath_hal_eepromGetFlag(ah, AR_EEP_AMODE)) {
  pCap->halWirelessModes |= HAL_MODE_11A;
  if (!ath_hal_eepromGetFlag(ah, AR_EEP_TURBO5DISABLE))
   pCap->halWirelessModes |= HAL_MODE_TURBO;
 }
 if (ath_hal_eepromGetFlag(ah, AR_EEP_BMODE))
  pCap->halWirelessModes |= HAL_MODE_11B;

 pCap->halLow2GhzChan = 2312;
 pCap->halHigh2GhzChan = 2732;
 pCap->halLow5GhzChan = 4920;
 pCap->halHigh5GhzChan = 6100;

 pCap->halChanSpreadSupport = AH_TRUE;
 pCap->halSleepAfterBeaconBroken = AH_TRUE;
 pCap->halPSPollBroken = AH_TRUE;
 pCap->halVEOLSupport = AH_TRUE;
 pCap->halNumMRRetries = 1;
 pCap->halNumTxMaps = 1;

 pCap->halTotalQueues = HAL_NUM_TX_QUEUES;
 pCap->halKeyCacheSize = 128;


 pCap->halChanHalfRate = AH_FALSE;
 pCap->halChanQuarterRate = AH_FALSE;





 pCap->halUseCombinedRadarRssi = AH_TRUE;

 if (ath_hal_eepromGetFlag(ah, AR_EEP_RFKILL) &&
     ath_hal_eepromGet(ah, AR_EEP_RFSILENT, &ahpriv->ah_rfsilent) == HAL_OK) {

  ahpriv->ah_rfkillEnabled = AH_TRUE;
  pCap->halRfSilentSupport = AH_TRUE;
 }

 pCap->halRxTstampPrecision = 13;
 pCap->halTxTstampPrecision = 16;
 pCap->halIntrMask = HAL_INT_COMMON
   | HAL_INT_RX
   | HAL_INT_TX
   | HAL_INT_FATAL
   | HAL_INT_BNR
   | HAL_INT_TIM
   ;

 pCap->hal4kbSplitTransSupport = AH_TRUE;
 pCap->halHasRxSelfLinkedTail = AH_TRUE;


 ahpriv->ah_rxornIsFatal = AH_TRUE;
 return AH_TRUE;
}
