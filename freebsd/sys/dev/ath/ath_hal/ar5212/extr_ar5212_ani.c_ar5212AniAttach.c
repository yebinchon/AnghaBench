
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal_5212 {int ah_procPhyErr; int ah_aniParams24; scalar_t__ ah_hasHwPhyCounters; int ah_ani; int ah_aniParams5; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniParams {int dummy; } ;
struct TYPE_3__ {scalar_t__ halHwPhyCounterSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef scalar_t__ HAL_BOOL ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 struct ar5212AniParams const* AH_NULL ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int HALASSERT (int) ;
 int HAL_ANI_ENA ;
 int OS_MEMCPY (int *,struct ar5212AniParams const*,int) ;
 int OS_MEMZERO (int ,int) ;
 int enableAniMIBCounters (struct ath_hal*,int *) ;
 int setPhyErrBase (struct ath_hal*,int *) ;

void
ar5212AniAttach(struct ath_hal *ah, const struct ar5212AniParams *params24,
 const struct ar5212AniParams *params5, HAL_BOOL enable)
{
 struct ath_hal_5212 *ahp = AH5212(ah);

 ahp->ah_hasHwPhyCounters =
  AH_PRIVATE(ah)->ah_caps.halHwPhyCounterSupport;

 if (params24 != AH_NULL) {
  OS_MEMCPY(&ahp->ah_aniParams24, params24, sizeof(*params24));
  setPhyErrBase(ah, &ahp->ah_aniParams24);
 }
 if (params5 != AH_NULL) {
  OS_MEMCPY(&ahp->ah_aniParams5, params5, sizeof(*params5));
  setPhyErrBase(ah, &ahp->ah_aniParams5);
 }

 OS_MEMZERO(ahp->ah_ani, sizeof(ahp->ah_ani));
 if (ahp->ah_hasHwPhyCounters) {

  enableAniMIBCounters(ah, &ahp->ah_aniParams24 );
 }
 if (enable) {
  HALASSERT(params24 != AH_NULL && params5 != AH_NULL);
  ahp->ah_procPhyErr |= HAL_ANI_ENA;
 } else {
  ahp->ah_procPhyErr &= ~HAL_ANI_ENA;
 }
}
