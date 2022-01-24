#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ath_softc {int /*<<< orphan*/  sc_dev; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  btinfo ;
typedef  int /*<<< orphan*/  btconfig ;
struct TYPE_6__ {int bt_gpio_bt_active; int bt_gpio_bt_priority; int bt_gpio_wlan_active; int bt_active_polarity; int bt_single_ant; int bt_txstate_extend; int bt_txframe_extend; int bt_quiet_collision; int bt_rxclear_polarity; int bt_priority_time; int bt_first_slot_time; int bt_hold_rxclear; int /*<<< orphan*/  bt_mode; scalar_t__ bt_time_extend; scalar_t__ bt_isolation; int /*<<< orphan*/  bt_coex_config; int /*<<< orphan*/  bt_module; } ;
typedef  TYPE_1__ HAL_BT_COEX_INFO ;
typedef  TYPE_1__ HAL_BT_COEX_CONFIG ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HAL_BT_COEX_ANTENNA_DIVERSITY ; 
 int /*<<< orphan*/  HAL_BT_COEX_CFG_3WIRE ; 
 int /*<<< orphan*/  HAL_BT_COEX_MODE_SLOTTED ; 
 int /*<<< orphan*/  HAL_BT_MODULE_JANUS ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct ath_softc *sc)
{
	HAL_BT_COEX_INFO btinfo;
	HAL_BT_COEX_CONFIG btconfig;
	struct ath_hal *ah = sc->sc_ah;

	if (! FUNC3(ah))
		return (EINVAL);

	FUNC4(&btinfo, sizeof(btinfo));
	FUNC4(&btconfig, sizeof(btconfig));

	FUNC5(sc->sc_dev, "Enabling WB225 BTCOEX\n");

	btinfo.bt_module = HAL_BT_MODULE_JANUS;	/* XXX not used? */
	btinfo.bt_coex_config = HAL_BT_COEX_CFG_3WIRE;
	/*
	 * These are the three GPIO pins hooked up between the AR9485 and
	 * the bluetooth module.
	 */
	btinfo.bt_gpio_bt_active = 4;
	btinfo.bt_gpio_bt_priority = 8;
	btinfo.bt_gpio_wlan_active = 5;

	btinfo.bt_active_polarity = 1;	/* XXX not used */
	btinfo.bt_single_ant = 1;	/* 1 antenna on ar9285 ? */
	btinfo.bt_isolation = 0;	/* in dB, not used */

	FUNC1(ah, &btinfo);

	btconfig.bt_time_extend = 0;
	btconfig.bt_txstate_extend = 1;	/* true */
	btconfig.bt_txframe_extend = 1;	/* true */
	btconfig.bt_mode = HAL_BT_COEX_MODE_SLOTTED;
	btconfig.bt_quiet_collision = 1;	/* true */
	btconfig.bt_rxclear_polarity = 1;	/* true */
	btconfig.bt_priority_time = 2;
	btconfig.bt_first_slot_time = 5;
	btconfig.bt_hold_rxclear = 1;	/* true */

	FUNC0(ah, &btconfig);

	/*
	 * Enable antenna diversity.
	 */
	FUNC2(ah, HAL_BT_COEX_ANTENNA_DIVERSITY, 1);

	return (0);
}