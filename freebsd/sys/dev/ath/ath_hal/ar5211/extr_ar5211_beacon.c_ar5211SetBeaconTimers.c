
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int bt_intval; int bt_nextatim; int bt_nextswba; int bt_nextdba; int bt_nexttbtt; } ;
typedef TYPE_1__ HAL_BEACON_TIMERS ;


 int AR_BEACON ;
 int AR_TIMER0 ;
 int AR_TIMER1 ;
 int AR_TIMER2 ;
 int AR_TIMER3 ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar5211SetBeaconTimers(struct ath_hal *ah, const HAL_BEACON_TIMERS *bt)
{

 OS_REG_WRITE(ah, AR_TIMER0, bt->bt_nexttbtt);
 OS_REG_WRITE(ah, AR_TIMER1, bt->bt_nextdba);
 OS_REG_WRITE(ah, AR_TIMER2, bt->bt_nextswba);
 OS_REG_WRITE(ah, AR_TIMER3, bt->bt_nextatim);



 OS_REG_WRITE(ah, AR_BEACON, bt->bt_intval);
}
