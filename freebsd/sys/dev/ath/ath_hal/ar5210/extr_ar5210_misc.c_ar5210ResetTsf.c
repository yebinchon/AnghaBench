
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_BEACON ;
 int AR_BEACON_RESET_TSF ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5210ResetTsf(struct ath_hal *ah)
{
 uint32_t val = OS_REG_READ(ah, AR_BEACON);

 OS_REG_WRITE(ah, AR_BEACON, val | AR_BEACON_RESET_TSF);
}
