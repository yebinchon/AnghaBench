
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halTxTstampPrecision; int halRxDoMyBeacon; int halRxUsingLnaMixing; int halMfpSupport; int halSerialiseRegWar; int halHasBBReadWar; int halHasRxSelfLinkedTail; int halRxStreams; int halTxStreams; int halBssidMatchSupport; int halIntrMask; int halEnhancedDfsSupport; int halAntDivCombSupport; int halRxTstampPrecision; int halHTSGI20Support; int halSpectralScanSupport; int halBtCoexSupport; int halNumMRRetries; int halRxLpFifoDepth; int halRxHpFifoDepth; int halRxStatusLen; int halTxStatusLen; int halTxDescLen; int halNumTxMaps; int halEnhancedDmaSupport; int hal4kbSplitTransSupport; int halMbssidAggrSupport; int halAutoSleepSupport; int halUseCombinedRadarRssi; int halTxStbcSupport; int halRxStbcSupport; int halExtChanDfsSupport; int hal4AddrAggrSupport; int halRtsAggrLimit; int halCSTSupport; int halNumGpioPins; int halRxChainMask; int halTxChainMask; int halFastCCSupport; int halGTTSupport; int halHTSupport; int halRfSilentSupport; int halMcastKeySrchSupport; int halBssIdMaskSupport; int halFastFramesSupport; int halBurstSupport; int halCompressSupport; int halPSPollBroken; int halVEOLSupport; int halTotalQueues; int halKeyCacheSize; int halHwPhyCounterSupport; } ;
struct TYPE_4__ {int ah_rxornIsFatal; int ah_currentRDext; int ah_rfsilent; int ah_rfkillEnabled; int ah_tpScale; int ah_maxPowerLevel; int ah_powerLimit; int ah_diagreg; int ah_dfsDomain; int ah_currentRD; TYPE_1__ ah_caps; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;
typedef TYPE_1__ HAL_CAPABILITIES ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int HAL_EINVAL ;
 int HAL_ENOTSUPP ;
 int HAL_ENXIO ;
 int HAL_OK ;



HAL_STATUS
ath_hal_getcapability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
 uint32_t capability, uint32_t *result)
{
 const HAL_CAPABILITIES *pCap = &AH_PRIVATE(ah)->ah_caps;

 switch (type) {
 case 157:
  *result = AH_PRIVATE(ah)->ah_currentRD;
  return HAL_OK;
 case 180:
  *result = AH_PRIVATE(ah)->ah_dfsDomain;
  return HAL_OK;
 case 184:
 case 140:
  return HAL_ENOTSUPP;
 case 139:
  return HAL_ENOTSUPP;
 case 159:
  return pCap->halHwPhyCounterSupport ? HAL_OK : HAL_ENXIO;
 case 130:
  return HAL_ENOTSUPP;
 case 178:
  return HAL_ENOTSUPP;
 case 167:
  *result = pCap->halKeyCacheSize;
  return HAL_OK;
 case 160:
  *result = pCap->halTotalQueues;
  return HAL_OK;
 case 131:
  return pCap->halVEOLSupport ? HAL_OK : HAL_ENOTSUPP;
 case 158:
  return pCap->halPSPollBroken ? HAL_ENOTSUPP : HAL_OK;
 case 182:
  return pCap->halCompressSupport ? HAL_OK : HAL_ENOTSUPP;
 case 185:
  return pCap->halBurstSupport ? HAL_OK : HAL_ENOTSUPP;
 case 173:
  return pCap->halFastFramesSupport ? HAL_OK : HAL_ENOTSUPP;
 case 179:
  *result = AH_PRIVATE(ah)->ah_diagreg;
  return HAL_OK;
 case 136:
  switch (capability) {
  case 0:
   return HAL_OK;
  case 1:
   *result = AH_PRIVATE(ah)->ah_powerLimit;
   return HAL_OK;
  case 2:
   *result = AH_PRIVATE(ah)->ah_maxPowerLevel;
   return HAL_OK;
  case 3:
   *result = AH_PRIVATE(ah)->ah_tpScale;
   return HAL_OK;
  }
  return HAL_ENOTSUPP;
 case 188:
  return pCap->halBssIdMaskSupport ? HAL_OK : HAL_ENOTSUPP;
 case 165:
  return pCap->halMcastKeySrchSupport ? HAL_OK : HAL_ENOTSUPP;
 case 138:
  return HAL_ENOTSUPP;
 case 155:
  switch (capability) {
  case 0:
   return pCap->halRfSilentSupport ? HAL_OK : HAL_ENOTSUPP;
  case 1:
   return AH_PRIVATE(ah)->ah_rfkillEnabled ?
    HAL_OK : HAL_ENOTSUPP;
  case 2:
   *result = AH_PRIVATE(ah)->ah_rfsilent;
   return HAL_OK;
  }
  return HAL_ENOTSUPP;
 case 193:
  return HAL_OK;

 case 170:
  return pCap->halHTSupport ? HAL_OK : HAL_ENOTSUPP;
 case 171:
  return pCap->halGTTSupport ? HAL_OK : HAL_ENOTSUPP;
 case 172:
  return pCap->halFastCCSupport ? HAL_OK : HAL_ENOTSUPP;
 case 133:
  *result = pCap->halTxChainMask;
  return HAL_OK;
 case 147:
  *result = pCap->halRxChainMask;
  return HAL_OK;
 case 163:
  *result = pCap->halNumGpioPins;
  return HAL_OK;
 case 181:
  return pCap->halCSTSupport ? HAL_OK : HAL_ENOTSUPP;
 case 154:
  *result = pCap->halRtsAggrLimit;
  return HAL_OK;
 case 192:
  return pCap->hal4AddrAggrSupport ? HAL_OK : HAL_ENOTSUPP;
 case 174:
  return pCap->halExtChanDfsSupport ? HAL_OK : HAL_ENOTSUPP;
 case 145:
  return pCap->halRxStbcSupport ? HAL_OK : HAL_ENOTSUPP;
 case 132:
  return pCap->halTxStbcSupport ? HAL_OK : HAL_ENOTSUPP;
 case 183:
  return pCap->halUseCombinedRadarRssi ? HAL_OK : HAL_ENOTSUPP;
 case 190:
  return pCap->halAutoSleepSupport ? HAL_OK : HAL_ENOTSUPP;
 case 166:
  return pCap->halMbssidAggrSupport ? HAL_OK : HAL_ENOTSUPP;
 case 142:
  return pCap->hal4kbSplitTransSupport ? HAL_OK : HAL_ENOTSUPP;
 case 156:
  *result = AH_PRIVATE(ah)->ah_currentRDext;
  return HAL_OK;
 case 175:
  return pCap->halEnhancedDmaSupport ? HAL_OK : HAL_ENOTSUPP;
 case 161:
  *result = pCap->halNumTxMaps;
  return HAL_OK;
 case 137:
  *result = pCap->halTxDescLen;
  return HAL_OK;
 case 135:
  *result = pCap->halTxStatusLen;
  return HAL_OK;
 case 149:
  *result = pCap->halRxStatusLen;
  return HAL_OK;
 case 151:
  switch (capability) {
  case 129:
   *result = pCap->halRxHpFifoDepth;
   return HAL_OK;
  case 128:
   *result = pCap->halRxLpFifoDepth;
   return HAL_OK;
  default:
   return HAL_ENOTSUPP;
 }
 case 153:
 case 162:
  *result = pCap->halNumMRRetries;
  return HAL_OK;
 case 186:
  return pCap->halBtCoexSupport ? HAL_OK : HAL_ENOTSUPP;
 case 143:
  return pCap->halSpectralScanSupport ? HAL_OK : HAL_ENOTSUPP;
 case 169:
  return pCap->halHTSGI20Support ? HAL_OK : HAL_ENOTSUPP;
 case 148:
  *result = pCap->halRxTstampPrecision;
  return HAL_OK;
 case 191:
  return pCap->halAntDivCombSupport ? HAL_OK : HAL_ENOTSUPP;

 case 176:
  return pCap->halEnhancedDfsSupport ? HAL_OK : HAL_ENOTSUPP;


 case 150:
  return AH_PRIVATE(ah)->ah_rxornIsFatal ? HAL_OK : HAL_ENOTSUPP;
 case 168:
  *result = pCap->halIntrMask;
  return HAL_OK;
 case 187:
  return pCap->halBssidMatchSupport ? HAL_OK : HAL_ENOTSUPP;
 case 141:
  switch (capability) {
  case 0:
   *result = pCap->halTxStreams;
   return HAL_OK;
  case 1:
   *result = pCap->halRxStreams;
   return HAL_OK;
  default:
   return HAL_ENOTSUPP;
  }
 case 152:
  return pCap->halHasRxSelfLinkedTail ? HAL_OK : HAL_ENOTSUPP;
 case 189:
  return pCap->halHasBBReadWar? HAL_OK : HAL_ENOTSUPP;
 case 144:
  return pCap->halSerialiseRegWar ? HAL_OK : HAL_ENOTSUPP;
 case 164:
  *result = pCap->halMfpSupport;
  return HAL_OK;
 case 146:
  return pCap->halRxUsingLnaMixing ? HAL_OK : HAL_ENOTSUPP;
 case 177:
  return pCap->halRxDoMyBeacon ? HAL_OK : HAL_ENOTSUPP;
 case 134:
  *result = pCap->halTxTstampPrecision;
  return HAL_OK;
 default:
  return HAL_EINVAL;
 }
}
