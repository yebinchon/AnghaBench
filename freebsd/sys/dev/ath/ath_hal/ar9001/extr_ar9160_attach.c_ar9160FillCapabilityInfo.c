
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halRtsAggrLimit; int halTxStreams; int halRxStreams; void* halHasBBReadWar; void* hal4AddrAggrSupport; void* halMbssidAggrSupport; void* halAutoSleepSupport; void* halUseCombinedRadarRssi; void* halExtChanDfsSupport; void* halRifsTxSupport; void* halRifsRxSupport; void* halCSTSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef TYPE_1__ HAL_CAPABILITIES ;
typedef void* HAL_BOOL ;


 void* AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 void* AH_TRUE ;
 int ar5416FillCapabilityInfo (struct ath_hal*) ;

__attribute__((used)) static HAL_BOOL
ar9160FillCapabilityInfo(struct ath_hal *ah)
{
 HAL_CAPABILITIES *pCap = &AH_PRIVATE(ah)->ah_caps;

 if (!ar5416FillCapabilityInfo(ah))
  return AH_FALSE;
 pCap->halCSTSupport = AH_TRUE;
 pCap->halRifsRxSupport = AH_TRUE;
 pCap->halRifsTxSupport = AH_TRUE;
 pCap->halRtsAggrLimit = 64*1024;
 pCap->halExtChanDfsSupport = AH_TRUE;
 pCap->halUseCombinedRadarRssi = AH_TRUE;
 pCap->halAutoSleepSupport = AH_FALSE;
 pCap->halMbssidAggrSupport = AH_TRUE;
 pCap->hal4AddrAggrSupport = AH_TRUE;

 pCap->halHasBBReadWar = AH_TRUE;


 pCap->halTxStreams = 2;
 pCap->halRxStreams = 2;

 return AH_TRUE;
}
