
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_5416 {int ah_btCoexMode2; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 int AR_BT_BCN_MISS_THRESH ;
 int SM (int ,int ) ;

void
ar5416BTCoexSetupBmissThresh(struct ath_hal *ah, u_int32_t thresh)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 ahp->ah_btCoexMode2 |= SM(thresh, AR_BT_BCN_MISS_THRESH);
}
