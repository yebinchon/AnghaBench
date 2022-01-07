
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ath_hal_5212 {scalar_t__ ah_txTrigLev; scalar_t__ ah_maxTxTrigLev; int ah_maskReg; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_INT ;
typedef int HAL_BOOL ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 scalar_t__ AR_FTRIG ;
 int AR_TXCFG ;
 int HAL_INT_GLOBAL ;
 scalar_t__ MIN_TX_FIFO_THRESHOLD ;
 scalar_t__ MS (scalar_t__,scalar_t__) ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,scalar_t__) ;
 scalar_t__ SM (scalar_t__,scalar_t__) ;
 int ath_hal_setInterrupts (struct ath_hal*,int) ;

HAL_BOOL
ar5212UpdateTxTrigLevel(struct ath_hal *ah, HAL_BOOL bIncTrigLevel)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 uint32_t txcfg, curLevel, newLevel;
 HAL_INT omask;

 if (ahp->ah_txTrigLev >= ahp->ah_maxTxTrigLev)
  return AH_FALSE;




 omask = ath_hal_setInterrupts(ah, ahp->ah_maskReg &~ HAL_INT_GLOBAL);

 txcfg = OS_REG_READ(ah, AR_TXCFG);
 curLevel = MS(txcfg, AR_FTRIG);
 newLevel = curLevel;
 if (bIncTrigLevel) {
  if (curLevel < ahp->ah_maxTxTrigLev)
   newLevel++;
 } else if (curLevel > MIN_TX_FIFO_THRESHOLD)
  newLevel--;
 if (newLevel != curLevel)

  OS_REG_WRITE(ah, AR_TXCFG,
   (txcfg &~ AR_FTRIG) | SM(newLevel, AR_FTRIG));

 ahp->ah_txTrigLev = newLevel;


 ath_hal_setInterrupts(ah, omask);

 return (newLevel != curLevel);
}
