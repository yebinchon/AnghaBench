
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5212 {int ah_stats; int ah_mibStats; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_ANI_STATS ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int ar5212UpdateMibCounters (struct ath_hal*,int *) ;

HAL_ANI_STATS *
ar5212AniGetCurrentStats(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);



 ar5212UpdateMibCounters(ah, &ahp->ah_mibStats);
 return &ahp->ah_stats;
}
