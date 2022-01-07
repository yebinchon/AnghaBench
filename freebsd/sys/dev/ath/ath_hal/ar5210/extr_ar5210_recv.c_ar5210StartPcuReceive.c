
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_DIAG_SW ;
 int AR_DIAG_SW_DIS_RX ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ar5210UpdateDiagReg (struct ath_hal*,int) ;

void
ar5210StartPcuReceive(struct ath_hal *ah, HAL_BOOL is_scanning)
{
 ar5210UpdateDiagReg(ah,
  OS_REG_READ(ah, AR_DIAG_SW) & ~(AR_DIAG_SW_DIS_RX));
}
