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
typedef  int uint16_t ;
struct fxp_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FXP_CSR_EEPROMCONTROL ; 
 int FXP_EEPROM_EECS ; 
 int FXP_EEPROM_EEDI ; 
 int FXP_EEPROM_EESK ; 

__attribute__((used)) static void
FUNC2(struct fxp_softc *sc, int data, int length)
{
	uint16_t reg;
	int x;

	/*
	 * Shift in data.
	 */
	for (x = 1 << (length - 1); x; x >>= 1) {
		if (data & x)
			reg = FXP_EEPROM_EECS | FXP_EEPROM_EEDI;
		else
			reg = FXP_EEPROM_EECS;
		FUNC0(sc, FXP_CSR_EEPROMCONTROL, reg);
		FUNC1(1);
		FUNC0(sc, FXP_CSR_EEPROMCONTROL, reg | FXP_EEPROM_EESK);
		FUNC1(1);
		FUNC0(sc, FXP_CSR_EEPROMCONTROL, reg);
		FUNC1(1);
	}
}