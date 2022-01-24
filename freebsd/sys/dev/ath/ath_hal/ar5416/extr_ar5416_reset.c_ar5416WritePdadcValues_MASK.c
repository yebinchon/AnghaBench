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
typedef  int uint8_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int AR_PHY_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,char*,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  HAL_DEBUG_EEPROM ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int,int) ; 
 int FUNC2 (struct ath_hal*,int) ; 

void
FUNC3(struct ath_hal *ah, int i, uint8_t pdadcValues[])
{
	int regOffset, regChainOffset;
	int j;
	int reg32;

	regChainOffset = FUNC2(ah, i);
	regOffset = AR_PHY_BASE + (672 << 2) + regChainOffset;

	for (j = 0; j < 32; j++) {
		reg32 = ((pdadcValues[4*j + 0] & 0xFF) << 0)  |
		    ((pdadcValues[4*j + 1] & 0xFF) << 8)  |
		    ((pdadcValues[4*j + 2] & 0xFF) << 16) |
		    ((pdadcValues[4*j + 3] & 0xFF) << 24) ;
		FUNC1(ah, regOffset, reg32);
		FUNC0(ah, HAL_DEBUG_EEPROM, "PDADC: Chain %d |"
		    " PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d"
		    " Value %3d | PDADC %3d Value %3d |\n",
		    i,
		    4*j, pdadcValues[4*j],
		    4*j+1, pdadcValues[4*j + 1],
		    4*j+2, pdadcValues[4*j + 2],
		    4*j+3, pdadcValues[4*j + 3]);
		regOffset += 4;
	}
}