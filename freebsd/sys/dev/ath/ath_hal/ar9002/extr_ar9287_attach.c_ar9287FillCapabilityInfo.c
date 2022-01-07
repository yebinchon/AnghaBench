
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halNumGpioPins; int halRtsAggrLimit; int halRxStbcSupport; int halTxStbcSupport; int halHTSGI20Support; void* halEnhancedDfsSupport; void* halSpectralScanSupport; void* halPSPollBroken; void* halHasRxSelfLinkedTail; void* hal4kbSplitTransSupport; void* halAutoSleepSupport; void* halBtCoexSupport; void* halUseCombinedRadarRssi; void* halExtChanDfsSupport; void* halRifsTxSupport; void* halRifsRxSupport; void* halCSTSupport; void* halWowMatchPatternDword; void* halWowMatchPatternExact; void* halWowSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef TYPE_1__ HAL_CAPABILITIES ;
typedef void* HAL_BOOL ;


 void* AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 void* AH_TRUE ;
 int ar5416FillCapabilityInfo (struct ath_hal*) ;

__attribute__((used)) static HAL_BOOL
ar9287FillCapabilityInfo(struct ath_hal *ah)
{
 HAL_CAPABILITIES *pCap = &AH_PRIVATE(ah)->ah_caps;

 if (!ar5416FillCapabilityInfo(ah))
  return AH_FALSE;
 pCap->halNumGpioPins = 10;
 pCap->halWowSupport = AH_TRUE;
 pCap->halWowMatchPatternExact = AH_TRUE;




 pCap->halCSTSupport = AH_TRUE;
 pCap->halRifsRxSupport = AH_TRUE;
 pCap->halRifsTxSupport = AH_TRUE;
 pCap->halRtsAggrLimit = 64*1024;
 pCap->halExtChanDfsSupport = AH_TRUE;
 pCap->halUseCombinedRadarRssi = AH_TRUE;




 pCap->halAutoSleepSupport = AH_FALSE;
 pCap->hal4kbSplitTransSupport = AH_FALSE;

 pCap->halHasRxSelfLinkedTail = AH_FALSE;
 pCap->halPSPollBroken = AH_FALSE;
 pCap->halSpectralScanSupport = AH_TRUE;


 pCap->halRxStbcSupport = 1;
 pCap->halTxStbcSupport = 1;


 pCap->halHTSGI20Support = 1;

 pCap->halEnhancedDfsSupport = AH_TRUE;

 return AH_TRUE;
}
