
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal_5416 {int ah_btCoexFlag; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int ath_hal_desc_tpc; } ;
struct TYPE_4__ {int ah_extra_txpow; int ah_power_limit; TYPE_1__ ah_config; } ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_TPC ;

 int HAL_BT_COEX_FLAG_LOWER_TX_PWR ;
 int HAL_BT_COEX_FLAG_LOW_ACK_PWR ;
 int HAL_BT_COEX_HIGH_ACK_POWER ;

 int HAL_BT_COEX_LOW_ACK_POWER ;

 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int ar5416SetTxPowerLimit (struct ath_hal*,int ,int ,int ) ;

void
ar5416BTCoexSetParameter(struct ath_hal *ah, u_int32_t type, u_int32_t value)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 switch (type) {
 case 128:
  if (value) {
   ahp->ah_btCoexFlag |= HAL_BT_COEX_FLAG_LOW_ACK_PWR;
   OS_REG_WRITE(ah, AR_TPC, HAL_BT_COEX_LOW_ACK_POWER);
  } else {
   ahp->ah_btCoexFlag &= ~HAL_BT_COEX_FLAG_LOW_ACK_PWR;
   OS_REG_WRITE(ah, AR_TPC, HAL_BT_COEX_HIGH_ACK_POWER);
  }
  break;
 case 130:

  break;
 default:
   break;
 }
}
