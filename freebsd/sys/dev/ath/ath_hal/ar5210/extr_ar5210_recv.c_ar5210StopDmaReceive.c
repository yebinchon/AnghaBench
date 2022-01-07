
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_CR ;
 int AR_CR_RXD ;
 int AR_CR_RXE ;
 int AR_DIAG_SW ;
 int OS_DELAY (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int ath_hal_printf (struct ath_hal*,char*,...) ;

HAL_BOOL
ar5210StopDmaReceive(struct ath_hal *ah)
{
 int i;

 OS_REG_WRITE(ah, AR_CR, AR_CR_RXD);
 for (i = 0; i < 1000; i++) {
  if ((OS_REG_READ(ah, AR_CR) & AR_CR_RXE) == 0)
   return AH_TRUE;
  OS_DELAY(10);
 }





 return AH_FALSE;
}
