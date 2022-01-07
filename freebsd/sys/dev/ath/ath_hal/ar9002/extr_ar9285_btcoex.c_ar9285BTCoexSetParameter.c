
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_5416 {int ah_btCoexFlag; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 int AR_SREV_KITE (struct ath_hal*) ;

 int HAL_BT_COEX_FLAG_ANT_DIV_ALLOW ;
 int HAL_BT_COEX_FLAG_ANT_DIV_ENABLE ;
 int ar5416BTCoexSetParameter (struct ath_hal*,int,int) ;
 int ar9285BTCoexAntennaDiversity (struct ath_hal*) ;

void
ar9285BTCoexSetParameter(struct ath_hal *ah, u_int32_t type, u_int32_t value)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 switch (type) {
 case 128:
  if (AR_SREV_KITE(ah)) {
   ahp->ah_btCoexFlag |= HAL_BT_COEX_FLAG_ANT_DIV_ALLOW;
   if (value)
    ahp->ah_btCoexFlag |=
        HAL_BT_COEX_FLAG_ANT_DIV_ENABLE;
   else
    ahp->ah_btCoexFlag &=
        ~HAL_BT_COEX_FLAG_ANT_DIV_ENABLE;
   ar9285BTCoexAntennaDiversity(ah);
  }
  break;
 default:
  ar5416BTCoexSetParameter(ah, type, value);
  break;
 }
}
