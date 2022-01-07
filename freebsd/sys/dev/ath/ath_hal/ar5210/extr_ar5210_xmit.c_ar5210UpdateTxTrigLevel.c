
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
 int AR_TRIG_LEV ;
 int HAL_INT_GLOBAL ;
 int MAX_TX_FIFO_THRESHOLD ;
 int MIN_TX_FIFO_THRESHOLD ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5210GetInterrupts (struct ath_hal*) ;
 int ar5210SetInterrupts (struct ath_hal*,int) ;

HAL_BOOL
ar5210UpdateTxTrigLevel(struct ath_hal *ah, HAL_BOOL bIncTrigLevel)
{
 uint32_t curTrigLevel;
 HAL_INT ints = ar5210GetInterrupts(ah);





 (void) ar5210SetInterrupts(ah, ints &~ HAL_INT_GLOBAL);
 curTrigLevel = OS_REG_READ(ah, AR_TRIG_LEV);
 if (bIncTrigLevel){

  curTrigLevel = curTrigLevel +
   ((MAX_TX_FIFO_THRESHOLD - curTrigLevel) / 2);
 } else {

  if (curTrigLevel > MIN_TX_FIFO_THRESHOLD) {

   curTrigLevel--;
  } else {


   ar5210SetInterrupts(ah, ints);
   return AH_FALSE;
  }
 }

 OS_REG_WRITE(ah, AR_TRIG_LEV, curTrigLevel);

 ar5210SetInterrupts(ah, ints);
 return AH_TRUE;
}
