
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal_5212 {int ah_beaconInterval; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int bt_nexttbtt; int bt_nextdba; int bt_nextswba; int bt_nextatim; int bt_intval; } ;
typedef TYPE_1__ HAL_BEACON_TIMERS ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AR_BEACON ;
 int AR_BEACON_RESET_TSF ;
 int AR_TIMER0 ;
 int AR_TIMER1 ;
 int AR_TIMER2 ;
 int AR_TIMER3 ;
 int HAL_BEACON_PERIOD ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5212SetBeaconTimers(struct ath_hal *ah, const HAL_BEACON_TIMERS *bt)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 OS_REG_WRITE(ah, AR_TIMER0, bt->bt_nexttbtt & 0xffff);
 OS_REG_WRITE(ah, AR_TIMER1, bt->bt_nextdba & 0x7ffff);
 OS_REG_WRITE(ah, AR_TIMER2, bt->bt_nextswba & 0x1ffffff);

 OS_REG_WRITE(ah, AR_TIMER3, bt->bt_nextatim & 0xffff);



 if (bt->bt_intval & AR_BEACON_RESET_TSF) {
  OS_REG_WRITE(ah, AR_BEACON, AR_BEACON_RESET_TSF);
 }
 OS_REG_WRITE(ah, AR_BEACON, bt->bt_intval);
 ahp->ah_beaconInterval = (bt->bt_intval & HAL_BEACON_PERIOD);
}
