
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal_5212 {int ah_beaconInterval; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int bt_nexttbtt; int bt_nextatim; int bt_intval; scalar_t__ bt_flags; int bt_nextswba; int bt_nextdba; } ;
typedef TYPE_1__ HAL_BEACON_TIMERS ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AR5416_BEACON_PERIOD ;
 int AR_BEACON_RESET_TSF ;
 int AR_DBA_PERIOD ;
 int AR_NDP_PERIOD ;
 int AR_NEXT_DBA ;
 int AR_NEXT_NDP ;
 int AR_NEXT_SWBA ;
 int AR_NEXT_TBTT ;
 int AR_SWBA_PERIOD ;
 int AR_TIMER_MODE ;
 int AR_TIMER_MODE_DBA ;
 int AR_TIMER_MODE_SWBA ;
 int AR_TIMER_MODE_TBTT ;
 int HAL_BEACON_PERIOD ;
 int ONE_EIGHTH_TU_TO_USEC (int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int TU_TO_USEC (int) ;
 int ar5416ResetTsf (struct ath_hal*) ;

void
ar5416SetBeaconTimers(struct ath_hal *ah, const HAL_BEACON_TIMERS *bt)
{
 uint32_t bperiod;
 struct ath_hal_5212 *ahp = AH5212(ah);

 OS_REG_WRITE(ah, AR_NEXT_TBTT, TU_TO_USEC(bt->bt_nexttbtt));
 OS_REG_WRITE(ah, AR_NEXT_DBA, ONE_EIGHTH_TU_TO_USEC(bt->bt_nextdba));
 OS_REG_WRITE(ah, AR_NEXT_SWBA, ONE_EIGHTH_TU_TO_USEC(bt->bt_nextswba));
 OS_REG_WRITE(ah, AR_NEXT_NDP, TU_TO_USEC(bt->bt_nextatim));

 bperiod = TU_TO_USEC(bt->bt_intval & HAL_BEACON_PERIOD);
 ahp->ah_beaconInterval = bt->bt_intval & HAL_BEACON_PERIOD;
 OS_REG_WRITE(ah, AR5416_BEACON_PERIOD, bperiod);
 OS_REG_WRITE(ah, AR_DBA_PERIOD, bperiod);
 OS_REG_WRITE(ah, AR_SWBA_PERIOD, bperiod);
 OS_REG_WRITE(ah, AR_NDP_PERIOD, bperiod);




 if (bt->bt_intval & AR_BEACON_RESET_TSF)
  ar5416ResetTsf(ah);



 OS_REG_SET_BIT(ah, AR_TIMER_MODE,
     bt->bt_flags != 0 ? bt->bt_flags :
  AR_TIMER_MODE_TBTT | AR_TIMER_MODE_DBA | AR_TIMER_MODE_SWBA);
}
