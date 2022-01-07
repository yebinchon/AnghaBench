
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_INT ;
typedef scalar_t__ HAL_BOOL ;


 scalar_t__ AH_FALSE ;
 scalar_t__ AH_TRUE ;
 int AR_TXCFG ;
 int AR_TXCFG_FTRIG_M ;
 int AR_TXCFG_FTRIG_S ;
 int HAL_INT_GLOBAL ;
 int MAX_TX_FIFO_THRESHOLD ;
 int MIN_TX_FIFO_THRESHOLD ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5211GetInterrupts (struct ath_hal*) ;
 int ar5211SetInterrupts (struct ath_hal*,int) ;

HAL_BOOL
ar5211UpdateTxTrigLevel(struct ath_hal *ah, HAL_BOOL bIncTrigLevel)
{
 uint32_t curTrigLevel, txcfg;
 HAL_INT ints = ar5211GetInterrupts(ah);





 ar5211SetInterrupts(ah, ints &~ HAL_INT_GLOBAL);
 txcfg = OS_REG_READ(ah, AR_TXCFG);
 curTrigLevel = (txcfg & AR_TXCFG_FTRIG_M) >> AR_TXCFG_FTRIG_S;
 if (bIncTrigLevel){

  curTrigLevel = curTrigLevel +
   ((MAX_TX_FIFO_THRESHOLD - curTrigLevel) / 2);
 } else {

  if (curTrigLevel > MIN_TX_FIFO_THRESHOLD) {

   curTrigLevel--;
  } else {


   ar5211SetInterrupts(ah, ints);
   return AH_FALSE;
  }
 }

 OS_REG_WRITE(ah, AR_TXCFG, (txcfg &~ AR_TXCFG_FTRIG_M) |
  ((curTrigLevel << AR_TXCFG_FTRIG_S) & AR_TXCFG_FTRIG_M));

 ar5211SetInterrupts(ah, ints);
 return AH_TRUE;
}
