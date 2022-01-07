
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_DIAG_SW ;
 int AR_DIAG_SW_DIS_CRYPTO ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar5210UpdateDiagReg(struct ath_hal *ah, uint32_t val)
{


 val |= AR_DIAG_SW_DIS_CRYPTO;
 OS_REG_WRITE(ah, AR_DIAG_SW, val);
}
