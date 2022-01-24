#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_7__ {TYPE_1__* ah_eeprom; } ;
struct TYPE_6__ {scalar_t__ ee_version; int ee_eepMap; } ;
typedef  TYPE_1__ HAL_EEPROM ;

/* Variables and functions */
 TYPE_1__* AH_NULL ; 
 TYPE_4__* FUNC0 (struct ath_hal*) ; 
 scalar_t__ AR_EEPROM_VER4_0 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(struct ath_hal *ah)
{
	HAL_EEPROM *ee = FUNC0(ah)->ah_eeprom;

        if (ee->ee_version >= AR_EEPROM_VER4_0 && ee->ee_eepMap == 1)
		FUNC2(ah, ee);
	FUNC1(ee);
	FUNC0(ah)->ah_eeprom = AH_NULL;
}