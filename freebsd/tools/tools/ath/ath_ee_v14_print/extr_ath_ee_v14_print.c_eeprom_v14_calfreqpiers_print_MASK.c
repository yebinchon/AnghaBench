#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {scalar_t__ openLoopPwrCntl; } ;
struct TYPE_5__ {int* calFreqPier2G; int* calFreqPier5G; int /*<<< orphan*/ ** calPierData5G; TYPE_1__ baseEepHeader; int /*<<< orphan*/ ** calPierData2G; } ;
struct TYPE_6__ {TYPE_2__ ee_base; } ;
typedef  TYPE_3__ HAL_EEPROM_v14 ;

/* Variables and functions */
 int AR5416_MAX_CHAINS ; 
 int AR5416_NUM_2G_CAL_PIERS ; 
 int AR5416_NUM_5G_CAL_PIERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(uint16_t *buf)
{
	HAL_EEPROM_v14 *eep = (HAL_EEPROM_v14 *) buf;
	int i, n;

	/* 2ghz cal piers */
	FUNC2("calFreqPier2G: ");
	for (i = 0; i < AR5416_NUM_2G_CAL_PIERS; i++) {
		FUNC2(" 0x%.2x ", eep->ee_base.calFreqPier2G[i]);
	}
	FUNC2("|\n");

	for (i = 0; i < AR5416_NUM_2G_CAL_PIERS; i++) {
		if (eep->ee_base.calFreqPier2G[i] == 0xff)
			continue;
		FUNC2("2Ghz Cal Pier %d\n", i);
		for (n = 0; n < AR5416_MAX_CHAINS; n++) {
			FUNC2("  Chain %d:\n", n);
			if (eep->ee_base.baseEepHeader.openLoopPwrCntl)
				FUNC1((void *) (&eep->ee_base.calPierData2G[n][i]));
			else
				FUNC0(&eep->ee_base.calPierData2G[n][i]);
		}
	}

	FUNC2("\n");

	/* 5ghz cal piers */
	FUNC2("calFreqPier5G: ");
	for (i = 0; i < AR5416_NUM_5G_CAL_PIERS; i++) {
		FUNC2(" 0x%.2x ", eep->ee_base.calFreqPier5G[i]);
	}
	FUNC2("|\n");
	for (i = 0; i < AR5416_NUM_5G_CAL_PIERS; i++) {
		if (eep->ee_base.calFreqPier5G[i] == 0xff)
			continue;
		FUNC2("5Ghz Cal Pier %d\n", i);
		for (n = 0; n < AR5416_MAX_CHAINS; n++) {
			FUNC2("  Chain %d:\n", n);
			if (eep->ee_base.baseEepHeader.openLoopPwrCntl)
				FUNC1((void *) (&eep->ee_base.calPierData5G[n][i]));
			else
				FUNC0(&eep->ee_base.calPierData5G[n][i]);
		}
	}
}