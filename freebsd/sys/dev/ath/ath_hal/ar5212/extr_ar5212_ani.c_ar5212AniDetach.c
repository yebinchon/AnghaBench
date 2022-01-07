
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5212 {scalar_t__ ah_hasHwPhyCounters; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int HALDEBUG (struct ath_hal*,int ,char*) ;
 int HAL_DEBUG_ANI ;
 int disableAniMIBCounters (struct ath_hal*) ;

void
ar5212AniDetach(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);

 HALDEBUG(ah, HAL_DEBUG_ANI, "Detaching Ani\n");
 if (ahp->ah_hasHwPhyCounters)
  disableAniMIBCounters(ah);
}
