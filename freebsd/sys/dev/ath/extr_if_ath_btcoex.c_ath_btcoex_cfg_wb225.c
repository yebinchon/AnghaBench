
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ath_softc {int sc_dev; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
typedef int btinfo ;
typedef int btconfig ;
struct TYPE_6__ {int bt_gpio_bt_active; int bt_gpio_bt_priority; int bt_gpio_wlan_active; int bt_active_polarity; int bt_single_ant; int bt_txstate_extend; int bt_txframe_extend; int bt_quiet_collision; int bt_rxclear_polarity; int bt_priority_time; int bt_first_slot_time; int bt_hold_rxclear; int bt_mode; scalar_t__ bt_time_extend; scalar_t__ bt_isolation; int bt_coex_config; int bt_module; } ;
typedef TYPE_1__ HAL_BT_COEX_INFO ;
typedef TYPE_1__ HAL_BT_COEX_CONFIG ;


 int EINVAL ;
 int HAL_BT_COEX_ANTENNA_DIVERSITY ;
 int HAL_BT_COEX_CFG_3WIRE ;
 int HAL_BT_COEX_MODE_SLOTTED ;
 int HAL_BT_MODULE_JANUS ;
 int ath_hal_btcoex_set_config (struct ath_hal*,TYPE_1__*) ;
 int ath_hal_btcoex_set_info (struct ath_hal*,TYPE_1__*) ;
 int ath_hal_btcoex_set_parameter (struct ath_hal*,int ,int) ;
 int ath_hal_btcoex_supported (struct ath_hal*) ;
 int bzero (TYPE_1__*,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ath_btcoex_cfg_wb225(struct ath_softc *sc)
{
 HAL_BT_COEX_INFO btinfo;
 HAL_BT_COEX_CONFIG btconfig;
 struct ath_hal *ah = sc->sc_ah;

 if (! ath_hal_btcoex_supported(ah))
  return (EINVAL);

 bzero(&btinfo, sizeof(btinfo));
 bzero(&btconfig, sizeof(btconfig));

 device_printf(sc->sc_dev, "Enabling WB225 BTCOEX\n");

 btinfo.bt_module = HAL_BT_MODULE_JANUS;
 btinfo.bt_coex_config = HAL_BT_COEX_CFG_3WIRE;




 btinfo.bt_gpio_bt_active = 4;
 btinfo.bt_gpio_bt_priority = 8;
 btinfo.bt_gpio_wlan_active = 5;

 btinfo.bt_active_polarity = 1;
 btinfo.bt_single_ant = 1;
 btinfo.bt_isolation = 0;

 ath_hal_btcoex_set_info(ah, &btinfo);

 btconfig.bt_time_extend = 0;
 btconfig.bt_txstate_extend = 1;
 btconfig.bt_txframe_extend = 1;
 btconfig.bt_mode = HAL_BT_COEX_MODE_SLOTTED;
 btconfig.bt_quiet_collision = 1;
 btconfig.bt_rxclear_polarity = 1;
 btconfig.bt_priority_time = 2;
 btconfig.bt_first_slot_time = 5;
 btconfig.bt_hold_rxclear = 1;

 ath_hal_btcoex_set_config(ah, &btconfig);




 ath_hal_btcoex_set_parameter(ah, HAL_BT_COEX_ANTENNA_DIVERSITY, 1);

 return (0);
}
