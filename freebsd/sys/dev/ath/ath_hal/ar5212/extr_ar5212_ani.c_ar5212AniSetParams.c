
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal_5212 {int ah_procPhyErr; int ah_ani; int ah_aniParams5; int ah_aniParams24; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniParams {int dummy; } ;
struct TYPE_2__ {int ah_opmode; int ah_curchan; } ;
typedef int HAL_BOOL ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int HAL_ANI_ENA ;
 int HAL_ANI_MODE ;
 int OS_MEMCPY (int *,struct ar5212AniParams const*,int) ;
 int OS_MEMZERO (int ,int) ;
 int ar5212AniControl (struct ath_hal*,int ,int) ;
 int ar5212AniReset (struct ath_hal*,int ,int ,int) ;
 int setPhyErrBase (struct ath_hal*,int *) ;

HAL_BOOL
ar5212AniSetParams(struct ath_hal *ah, const struct ar5212AniParams *params24,
 const struct ar5212AniParams *params5)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 HAL_BOOL ena = (ahp->ah_procPhyErr & HAL_ANI_ENA) != 0;

 ar5212AniControl(ah, HAL_ANI_MODE, AH_FALSE);

 OS_MEMCPY(&ahp->ah_aniParams24, params24, sizeof(*params24));
 setPhyErrBase(ah, &ahp->ah_aniParams24);
 OS_MEMCPY(&ahp->ah_aniParams5, params5, sizeof(*params5));
 setPhyErrBase(ah, &ahp->ah_aniParams5);

 OS_MEMZERO(ahp->ah_ani, sizeof(ahp->ah_ani));
 ar5212AniReset(ah, AH_PRIVATE(ah)->ah_curchan,
     AH_PRIVATE(ah)->ah_opmode, AH_FALSE);

 ar5212AniControl(ah, HAL_ANI_MODE, ena);

 return AH_TRUE;
}
