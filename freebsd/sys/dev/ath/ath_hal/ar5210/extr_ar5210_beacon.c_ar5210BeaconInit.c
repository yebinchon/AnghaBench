
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int ah_dma_beacon_response_time; int ah_sw_beacon_response_time; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_7__ {scalar_t__ ah_opmode; } ;
struct TYPE_6__ {int bt_nexttbtt; int bt_nextdba; int bt_nextswba; int bt_nextatim; int bt_intval; } ;
typedef TYPE_2__ HAL_BEACON_TIMERS ;


 TYPE_4__* AH_PRIVATE (struct ath_hal*) ;
 int AR_BEACON_EN ;
 int AR_BEACON_PERIOD ;
 int AR_BEACON_RESET_TSF ;
 scalar_t__ HAL_M_STA ;
 int ar5210SetBeaconTimers (struct ath_hal*,TYPE_2__*) ;

void
ar5210BeaconInit(struct ath_hal *ah,
 uint32_t next_beacon, uint32_t beacon_period)
{
 HAL_BEACON_TIMERS bt;

 bt.bt_nexttbtt = next_beacon;

 if (AH_PRIVATE(ah)->ah_opmode != HAL_M_STA) {
  bt.bt_nextdba = (next_beacon -
   ah->ah_config.ah_dma_beacon_response_time) << 3;
  bt.bt_nextswba = (next_beacon -
            ah->ah_config.ah_sw_beacon_response_time) << 3;
  bt.bt_nextatim = next_beacon + 0;
 } else {
  bt.bt_nextdba = ~0;
  bt.bt_nextswba = ~0;
  bt.bt_nextatim = 1;
 }
 bt.bt_intval = beacon_period &
  (AR_BEACON_PERIOD | AR_BEACON_RESET_TSF | AR_BEACON_EN);
 ar5210SetBeaconTimers(ah, &bt);
}
