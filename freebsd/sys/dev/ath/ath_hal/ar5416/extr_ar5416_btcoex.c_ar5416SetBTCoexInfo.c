
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal_5416 {int ah_btWlanIsolation; int ah_btCoexSingleAnt; int ah_btActivePolarity; int ah_wlanActiveGpioSelect; int ah_btPriorityGpioSelect; int ah_btActiveGpioSelect; int ah_btCoexConfigType; int ah_btModule; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int bt_isolation; int bt_single_ant; int bt_active_polarity; int bt_gpio_wlan_active; int bt_gpio_bt_priority; int bt_gpio_bt_active; int bt_coex_config; int bt_module; } ;
typedef TYPE_1__ HAL_BT_COEX_INFO ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;

void
ar5416SetBTCoexInfo(struct ath_hal *ah, HAL_BT_COEX_INFO *btinfo)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 ahp->ah_btModule = btinfo->bt_module;
 ahp->ah_btCoexConfigType = btinfo->bt_coex_config;
 ahp->ah_btActiveGpioSelect = btinfo->bt_gpio_bt_active;
 ahp->ah_btPriorityGpioSelect = btinfo->bt_gpio_bt_priority;
 ahp->ah_wlanActiveGpioSelect = btinfo->bt_gpio_wlan_active;
 ahp->ah_btActivePolarity = btinfo->bt_active_polarity;
 ahp->ah_btCoexSingleAnt = btinfo->bt_single_ant;
 ahp->ah_btWlanIsolation = btinfo->bt_isolation;
}
