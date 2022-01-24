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
typedef  int /*<<< orphan*/  uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ah_rfsilent; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_EEPROM_RFSILENT_GPIO_SEL ; 
 int /*<<< orphan*/  AR_EEPROM_RFSILENT_POLARITY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int,int) ; 
 int FUNC3 (struct ath_hal*,int) ; 

void
FUNC4(struct ath_hal *ah)
{
	uint16_t rfsilent = FUNC0(ah)->ah_rfsilent;
	int select = FUNC1(rfsilent, AR_EEPROM_RFSILENT_GPIO_SEL);
	int polarity = FUNC1(rfsilent, AR_EEPROM_RFSILENT_POLARITY);

	/*
	 * If radio disable switch connection to GPIO bit 0 is enabled
	 * program GPIO interrupt.
	 * If rfkill bit on eeprom is 1, setupeeprommap routine has already
	 * verified that it is a later version of eeprom, it has a place for
	 * rfkill bit and it is set to 1, indicating that GPIO bit 0 hardware
	 * connection is present.
	 */
	FUNC2(ah, select, (FUNC3(ah, select) == polarity));
}