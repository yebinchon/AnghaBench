#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/ * calTargetPower5GHT40; int /*<<< orphan*/ * calTargetPower5GHT20; int /*<<< orphan*/ * calTargetPower5G; int /*<<< orphan*/ * calTargetPower2GHT40; int /*<<< orphan*/ * calTargetPower2GHT20; int /*<<< orphan*/ * calTargetPower2G; int /*<<< orphan*/ * calTargetPowerCck; } ;
struct TYPE_4__ {TYPE_1__ ee_base; } ;
typedef  TYPE_2__ HAL_EEPROM_v14 ;

/* Variables and functions */
 int AR5416_NUM_2G_20_TARGET_POWERS ; 
 int AR5416_NUM_2G_40_TARGET_POWERS ; 
 int AR5416_NUM_2G_CCK_TARGET_POWERS ; 
 int AR5416_NUM_5G_20_TARGET_POWERS ; 
 int AR5416_NUM_5G_40_TARGET_POWERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(uint16_t *buf)
{
	HAL_EEPROM_v14 *eep = (HAL_EEPROM_v14 *) buf;
	int i;

	/* 2ghz rates */
	FUNC2("2Ghz CCK:\n");
	for (i = 0; i < AR5416_NUM_2G_CCK_TARGET_POWERS; i++) {
		FUNC1(&eep->ee_base.calTargetPowerCck[i]);
	}
	FUNC2("2Ghz 11g:\n");
	for (i = 0; i < AR5416_NUM_2G_20_TARGET_POWERS; i++) {
		FUNC1(&eep->ee_base.calTargetPower2G[i]);
	}
	FUNC2("2Ghz HT20:\n");
	for (i = 0; i < AR5416_NUM_2G_20_TARGET_POWERS; i++) {
		FUNC0(&eep->ee_base.calTargetPower2GHT20[i]);
	}
	FUNC2("2Ghz HT40:\n");
	for (i = 0; i < AR5416_NUM_2G_40_TARGET_POWERS; i++) {
		FUNC0(&eep->ee_base.calTargetPower2GHT40[i]);
	}

	/* 5ghz rates */
	FUNC2("5Ghz 11a:\n");
	for (i = 0; i < AR5416_NUM_5G_20_TARGET_POWERS; i++) {
		FUNC1(&eep->ee_base.calTargetPower5G[i]);
	}
	FUNC2("5Ghz HT20:\n");
	for (i = 0; i < AR5416_NUM_5G_20_TARGET_POWERS; i++) {
		FUNC0(&eep->ee_base.calTargetPower5GHT20[i]);
	}
	FUNC2("5Ghz HT40:\n");
	for (i = 0; i < AR5416_NUM_5G_40_TARGET_POWERS; i++) {
		FUNC0(&eep->ee_base.calTargetPower5GHT40[i]);
	}

}