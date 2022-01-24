#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ah_eeprom; } ;
typedef  int /*<<< orphan*/  HAL_EEPROM_v14 ;

/* Variables and functions */
 int /*<<< orphan*/ * AH_NULL ; 
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ath_hal *ah)
{
	HAL_EEPROM_v14 *ee = FUNC0(ah)->ah_eeprom;

	FUNC1(ee);
	FUNC0(ah)->ah_eeprom = AH_NULL;
}