
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ ah_sw_beacon_response_time; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef int HAL_STATUS ;
typedef int HAL_QUIET_FLAG ;


 int AR_NEXT_QUIET ;
 int AR_QUIET1 ;
 int AR_QUIET1_QUIET_ACK_CTS_ENABLE ;
 int AR_QUIET2 ;
 int AR_QUIET2_QUIET_DUR ;
 int AR_QUIET_PERIOD ;
 int AR_TIMER_MODE ;
 int AR_TIMER_MODE_QUIET ;
 int AR_TSF_L32 ;
 int HAL_OK ;
 int HAL_QUIET_ADD_CURRENT_TSF ;
 int HAL_QUIET_ADD_SWBA_RESP_TIME ;
 int HAL_QUIET_ENABLE ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int SM (int ,int ) ;
 int TU_TO_USEC (int ) ;

HAL_STATUS
ar5416SetQuiet(struct ath_hal *ah, uint32_t period, uint32_t duration,
    uint32_t nextStart, HAL_QUIET_FLAG flag)
{
 uint32_t period_us = TU_TO_USEC(period);
 uint32_t nextStart_us = TU_TO_USEC(nextStart);
 if (flag & HAL_QUIET_ENABLE) {
  if ((!nextStart) || (flag & HAL_QUIET_ADD_CURRENT_TSF)) {

   nextStart_us += OS_REG_READ(ah, AR_TSF_L32);
  }
  if (flag & HAL_QUIET_ADD_SWBA_RESP_TIME) {
   nextStart_us += ah->ah_config.ah_sw_beacon_response_time;
  }
  OS_REG_RMW_FIELD(ah, AR_QUIET1, AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);
  OS_REG_WRITE(ah, AR_QUIET2, SM(duration, AR_QUIET2_QUIET_DUR));
  OS_REG_WRITE(ah, AR_QUIET_PERIOD, period_us);
  OS_REG_WRITE(ah, AR_NEXT_QUIET, nextStart_us);
  OS_REG_SET_BIT(ah, AR_TIMER_MODE, AR_TIMER_MODE_QUIET);
 } else {
  OS_REG_CLR_BIT(ah, AR_TIMER_MODE, AR_TIMER_MODE_QUIET);
 }
 return HAL_OK;
}
