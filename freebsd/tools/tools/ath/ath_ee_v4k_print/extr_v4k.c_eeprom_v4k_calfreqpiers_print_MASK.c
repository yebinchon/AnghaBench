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
struct TYPE_3__ {int* calFreqPier2G; int /*<<< orphan*/ ** calPierData2G; } ;
struct TYPE_4__ {TYPE_1__ ee_base; } ;
typedef  TYPE_2__ HAL_EEPROM_v4k ;

/* Variables and functions */
 int AR5416_4K_MAX_CHAINS ; 
 int AR5416_4K_NUM_2G_CAL_PIERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(uint16_t *buf)
{
	HAL_EEPROM_v4k *eep = (HAL_EEPROM_v4k *) buf;
	int i, n;

	/* 2ghz cal piers */
	FUNC1("calFreqPier2G: ");
	for (i = 0; i < AR5416_4K_NUM_2G_CAL_PIERS; i++) {
		FUNC1(" 0x%.2x ", eep->ee_base.calFreqPier2G[i]);
	}
	FUNC1("|\n");

	for (i = 0; i < AR5416_4K_NUM_2G_CAL_PIERS; i++) {
		if (eep->ee_base.calFreqPier2G[i] == 0xff)
			continue;
		FUNC1("2Ghz Cal Pier %d\n", i);
		for (n = 0; n < AR5416_4K_MAX_CHAINS; n++) {
			FUNC1("  Chain %d:\n", n);
			FUNC0(&eep->ee_base.calPierData2G[n][i]);
		}
	}

	FUNC1("\n");
}