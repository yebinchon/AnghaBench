
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_STATUS ;
typedef int HAL_QUIET_FLAG ;


 int AR_QUIET1 ;
 int AR_QUIET2 ;
 int AR_QUIET2_QUIET_DUR_S ;
 int HAL_OK ;
 int HAL_QUIET_ENABLE ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

HAL_STATUS
ar5212SetQuiet(struct ath_hal *ah, uint32_t period, uint32_t duration,
    uint32_t nextStart, HAL_QUIET_FLAG flag)
{
 OS_REG_WRITE(ah, AR_QUIET2, period | (duration << AR_QUIET2_QUIET_DUR_S));
 if (flag & HAL_QUIET_ENABLE) {
  OS_REG_WRITE(ah, AR_QUIET1, nextStart | (1 << 16));
 }
 else {
  OS_REG_WRITE(ah, AR_QUIET1, nextStart);
 }
 return HAL_OK;
}
