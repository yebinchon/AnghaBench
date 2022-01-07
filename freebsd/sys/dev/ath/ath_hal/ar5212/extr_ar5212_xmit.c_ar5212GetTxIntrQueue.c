
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal_5212 {int ah_intrTxqs; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;

void
ar5212GetTxIntrQueue(struct ath_hal *ah, uint32_t *txqs)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 *txqs &= ahp->ah_intrTxqs;
 ahp->ah_intrTxqs &= ~(*txqs);
}
