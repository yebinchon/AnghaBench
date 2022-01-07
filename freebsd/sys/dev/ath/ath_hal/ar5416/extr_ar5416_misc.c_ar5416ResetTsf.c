
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_RESET_TSF ;
 int AR_RESET_TSF_ONCE ;
 int AR_SLP32_MODE ;
 int AR_SLP32_TSF_WRITE_STATUS ;
 int OS_DELAY (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar5416ResetTsf(struct ath_hal *ah)
{
 uint32_t v;
 int i;

 for (i = 0; i < 10; i++) {
  v = OS_REG_READ(ah, AR_SLP32_MODE);
  if ((v & AR_SLP32_TSF_WRITE_STATUS) == 0)
   break;
  OS_DELAY(10);
 }
 OS_REG_WRITE(ah, AR_RESET_TSF, AR_RESET_TSF_ONCE);
}
