
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int OS_DELAY (int) ;
 int ar5212IsNFCalInProgress (struct ath_hal*) ;

HAL_BOOL
ar5212WaitNFCalComplete(struct ath_hal *ah, int i)
{
 int j;
 if (i <= 0)
  i = 1;
 for (j = 0; j < i; j++) {
  if (! ar5212IsNFCalInProgress(ah))
   return AH_TRUE;
  OS_DELAY(10);
 }
 return AH_FALSE;
}
