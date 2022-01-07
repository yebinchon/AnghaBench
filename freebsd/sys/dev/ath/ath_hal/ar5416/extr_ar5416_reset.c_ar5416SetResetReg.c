
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_FORCE_WAKE_ON_INT ;
 int HALASSERT (int ) ;



 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5416SetReset (struct ath_hal*,int) ;
 int ar5416SetResetPowerOn (struct ath_hal*) ;

HAL_BOOL
ar5416SetResetReg(struct ath_hal *ah, uint32_t type)
{



 OS_REG_WRITE(ah, AR_RTC_FORCE_WAKE,
     AR_RTC_FORCE_WAKE_EN | AR_RTC_FORCE_WAKE_ON_INT);

 switch (type) {
 case 129:
  return ar5416SetResetPowerOn(ah);
 case 128:
 case 130:
  return ar5416SetReset(ah, type);
 default:
  HALASSERT(AH_FALSE);
  return AH_FALSE;
 }
}
