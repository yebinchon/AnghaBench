
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_private {int ah_curchan; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 int IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,int ) ;

HAL_BOOL
ar5416IsFastClockEnabled(struct ath_hal *ah)
{
 struct ath_hal_private *ahp = AH_PRIVATE(ah);

 return IS_5GHZ_FAST_CLOCK_EN(ah, ahp->ah_curchan);
}
