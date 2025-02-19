
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal_5416 {int ah_btCoexMode; int ah_btCoexMode2; scalar_t__ ah_btCoexSingleAnt; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int bt_rxclear_polarity; int bt_time_extend; int bt_txstate_extend; int bt_txframe_extend; int bt_mode; int bt_quiet_collision; int bt_priority_time; int bt_first_slot_time; int bt_hold_rxclear; } ;
typedef TYPE_1__ HAL_BT_COEX_CONFIG ;
typedef int HAL_BOOL ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 scalar_t__ AH_FALSE ;
 int AR_BT_DISABLE_BT_ANT ;
 int AR_BT_FIRST_SLOT_TIME ;
 int AR_BT_HOLD_RX_CLEAR ;
 int AR_BT_MODE ;
 int AR_BT_PRIORITY_TIME ;
 int AR_BT_QCU_THRESH ;
 int AR_BT_QUIET ;
 int AR_BT_RX_CLEAR_POLARITY ;
 int AR_BT_TIME_EXTEND ;
 int AR_BT_TXSTATE_EXTEND ;
 int AR_BT_TX_FRAME_EXTEND ;
 scalar_t__ AR_SREV_KIWI (struct ath_hal*) ;
 int SM (int,int ) ;

void
ar5416BTCoexConfig(struct ath_hal *ah, HAL_BT_COEX_CONFIG *btconf)
{
 struct ath_hal_5416 *ahp = AH5416(ah);
 HAL_BOOL rxClearPolarity = btconf->bt_rxclear_polarity;





 if (AR_SREV_KIWI(ah)) {
  rxClearPolarity = !btconf->bt_rxclear_polarity;
 }

 ahp->ah_btCoexMode = (ahp->ah_btCoexMode & AR_BT_QCU_THRESH) |
     SM(btconf->bt_time_extend, AR_BT_TIME_EXTEND) |
     SM(btconf->bt_txstate_extend, AR_BT_TXSTATE_EXTEND) |
     SM(btconf->bt_txframe_extend, AR_BT_TX_FRAME_EXTEND) |
     SM(btconf->bt_mode, AR_BT_MODE) |
     SM(btconf->bt_quiet_collision, AR_BT_QUIET) |
     SM(rxClearPolarity, AR_BT_RX_CLEAR_POLARITY) |
     SM(btconf->bt_priority_time, AR_BT_PRIORITY_TIME) |
     SM(btconf->bt_first_slot_time, AR_BT_FIRST_SLOT_TIME);

 ahp->ah_btCoexMode2 |= SM(btconf->bt_hold_rxclear,
     AR_BT_HOLD_RX_CLEAR);

 if (ahp->ah_btCoexSingleAnt == AH_FALSE) {

  ahp->ah_btCoexMode2 |= AR_BT_DISABLE_BT_ANT;
 }
}
