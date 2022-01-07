
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal_5416 {int ah_btCoexMode; int ah_btCoexWLANWeight; int ah_btCoexBTWeight; int ah_btCoexMode2; int ah_btCoexFlag; scalar_t__ ah_btCoexSingleAnt; scalar_t__ ah_btCoexConfigType; int ah_btActiveGpioSelect; scalar_t__ ah_btCoexEnabled; int ah_wlanActiveGpioSelect; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 int AR9271_CLOCK_CONTROL ;
 int AR_BT_BT_WGHT ;
 int AR_BT_COEX_MODE ;
 int AR_BT_COEX_MODE2 ;
 int AR_BT_COEX_WEIGHT ;
 int AR_BT_COEX_WEIGHT2 ;
 int AR_BT_WL_WGHT ;
 int AR_GPIO_PDPU ;
 int AR_MISC_MODE ;
 int AR_PCU_BT_ANT_PREVENT_RX ;
 int AR_QUIET1 ;
 int AR_QUIET1_QUIET_ACK_CTS_ENABLE ;
 scalar_t__ AR_SREV_9271 (struct ath_hal*) ;
 scalar_t__ AR_SREV_KIWI_10_OR_LATER (struct ath_hal*) ;
 int AR_TPC ;
 scalar_t__ HAL_BT_COEX_CFG_3WIRE ;
 int HAL_BT_COEX_FLAG_LOW_ACK_PWR ;
 int HAL_BT_COEX_HIGH_ACK_POWER ;
 int HAL_BT_COEX_LOW_ACK_POWER ;
 int HAL_GPIO_OUTPUT_MUX_AS_TX_FRAME ;
 int HAL_GPIO_OUTPUT_MUX_AS_WLAN_ACTIVE ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW (struct ath_hal*,int ,int,int) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int,int ) ;
 int ar5416GpioCfgOutput (struct ath_hal*,int ,int ) ;

int
ar5416BTCoexEnable(struct ath_hal *ah)
{
 struct ath_hal_5416 *ahp = AH5416(ah);


 OS_REG_WRITE(ah, AR_BT_COEX_MODE, ahp->ah_btCoexMode);
 OS_REG_WRITE(ah, AR_BT_COEX_WEIGHT,
     SM(ahp->ah_btCoexWLANWeight & 0xFFFF, AR_BT_WL_WGHT) |
     SM(ahp->ah_btCoexBTWeight & 0xFFFF, AR_BT_BT_WGHT));
 if (AR_SREV_KIWI_10_OR_LATER(ah)) {
 OS_REG_WRITE(ah, AR_BT_COEX_WEIGHT2,
     SM(ahp->ah_btCoexWLANWeight >> 16, AR_BT_WL_WGHT));
 }
 OS_REG_WRITE(ah, AR_BT_COEX_MODE2, ahp->ah_btCoexMode2);


 if (AR_SREV_9271(ah)) {
  uint32_t val;

  val = OS_REG_READ(ah, AR9271_CLOCK_CONTROL);
  val &= 0xFFFFFEFF;
  OS_REG_WRITE(ah, AR9271_CLOCK_CONTROL, val);
 }

 if (ahp->ah_btCoexFlag & HAL_BT_COEX_FLAG_LOW_ACK_PWR)
  OS_REG_WRITE(ah, AR_TPC, HAL_BT_COEX_LOW_ACK_POWER);
 else
  OS_REG_WRITE(ah, AR_TPC, HAL_BT_COEX_HIGH_ACK_POWER);

 if (ahp->ah_btCoexSingleAnt == AH_TRUE) {
  OS_REG_RMW_FIELD(ah, AR_QUIET1,
      AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);

  OS_REG_RMW_FIELD(ah, AR_MISC_MODE,
      AR_PCU_BT_ANT_PREVENT_RX, 1);
 } else {
  OS_REG_RMW_FIELD(ah, AR_QUIET1,
      AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);

  OS_REG_RMW_FIELD(ah, AR_MISC_MODE,
      AR_PCU_BT_ANT_PREVENT_RX, 0);
 }

 if (ahp->ah_btCoexConfigType == HAL_BT_COEX_CFG_3WIRE) {

  ar5416GpioCfgOutput(ah, ahp->ah_wlanActiveGpioSelect,
      HAL_GPIO_OUTPUT_MUX_AS_WLAN_ACTIVE);
 } else {




  ar5416GpioCfgOutput(ah, ahp->ah_wlanActiveGpioSelect,
      HAL_GPIO_OUTPUT_MUX_AS_TX_FRAME);
 }





 OS_REG_RMW(ah, AR_GPIO_PDPU,
     (0x2 << (ahp->ah_btActiveGpioSelect * 2)),
     (0x3 << (ahp->ah_btActiveGpioSelect * 2)));

 ahp->ah_btCoexEnabled = AH_TRUE;

 return (0);
}
