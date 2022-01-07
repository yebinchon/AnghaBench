
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int HALDEBUG (struct ath_hal*,int ,char*) ;
 int HAL_DEBUG_ANI ;
 int disableAniMIBCounters (struct ath_hal*) ;

void
ar5416AniDetach(struct ath_hal *ah)
{
 HALDEBUG(ah, HAL_DEBUG_ANI, "Detaching Ani\n");
 disableAniMIBCounters(ah);
}
