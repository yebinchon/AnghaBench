
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_DIAG_SW ;
 int AR_DIAG_SW_DIS_RX ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ar5210UpdateDiagReg (struct ath_hal*,int) ;

void
ar5210StopPcuReceive(struct ath_hal *ah)
{
 ar5210UpdateDiagReg(ah,
  OS_REG_READ(ah, AR_DIAG_SW) | AR_DIAG_SW_DIS_RX);
}
