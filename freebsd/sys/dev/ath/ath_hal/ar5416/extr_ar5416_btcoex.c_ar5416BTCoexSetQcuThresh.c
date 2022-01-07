
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5416 {int ah_btCoexMode; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 int AR_BT_QCU_THRESH ;
 int SM (int,int ) ;

void
ar5416BTCoexSetQcuThresh(struct ath_hal *ah, int qnum)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 ahp->ah_btCoexMode |= SM(qnum, AR_BT_QCU_THRESH);
}
