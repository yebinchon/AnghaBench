#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct ath_hal {int dummy; } ;
typedef  int HAL_LED_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PCICFG ; 
 int AR_PCICFG_LEDCTL ; 
#define  AR_PCICFG_LEDCTL_ASSOC 130 
#define  AR_PCICFG_LEDCTL_NONE 129 
#define  AR_PCICFG_LEDCTL_PEND 128 
 int AR_PCICFG_LEDMODE ; 
 int const AR_PCICFG_LEDMODE_NETON ; 
 int const AR_PCICFG_LEDMODE_POWON ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int const,int) ; 

void
FUNC4(struct ath_hal *ah, HAL_LED_STATE state)
{
	static const uint32_t ledbits[8] = {
		AR_PCICFG_LEDCTL_NONE,	/* HAL_LED_INIT */
		AR_PCICFG_LEDCTL_PEND,	/* HAL_LED_SCAN */
		AR_PCICFG_LEDCTL_PEND,	/* HAL_LED_AUTH */
		AR_PCICFG_LEDCTL_ASSOC,	/* HAL_LED_ASSOC*/
		AR_PCICFG_LEDCTL_ASSOC,	/* HAL_LED_RUN */
		AR_PCICFG_LEDCTL_NONE,
		AR_PCICFG_LEDCTL_NONE,
		AR_PCICFG_LEDCTL_NONE,
	};
	uint32_t bits;

	bits = FUNC1(ah, AR_PCICFG);
	if (FUNC0(ah)) {
		/*
		 * Enable LED for Nala. There is a bit marked reserved
		 * that must be set and we also turn on the power led.
		 * Because we mark s/w LED control setting the control
		 * status bits below is meangless (the driver must flash
		 * the LED(s) using the GPIO lines).
		 */
		bits = (bits &~ AR_PCICFG_LEDMODE)
		     | FUNC3(AR_PCICFG_LEDMODE_POWON, AR_PCICFG_LEDMODE)
#if 0
		     | SM(AR_PCICFG_LEDMODE_NETON, AR_PCICFG_LEDMODE)
#endif
		     | 0x08000000;
	}
	bits = (bits &~ AR_PCICFG_LEDCTL)
	     | FUNC3(ledbits[state & 0x7], AR_PCICFG_LEDCTL);
	FUNC2(ah, AR_PCICFG, bits);
}