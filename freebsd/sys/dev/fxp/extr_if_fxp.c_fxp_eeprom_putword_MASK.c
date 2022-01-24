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
struct fxp_softc {int eeprom_size; } ;

/* Variables and functions */
 int FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FXP_CSR_EEPROMCONTROL ; 
 int /*<<< orphan*/  FXP_EEPROM_EECS ; 
 int FXP_EEPROM_EEDO ; 
 int FXP_EEPROM_OPC_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct fxp_softc*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct fxp_softc *sc, int offset, uint16_t data)
{
	int i;

	/*
	 * Erase/write enable.
	 */
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
	FUNC3(sc, 0x4, 3);
	FUNC3(sc, 0x03 << (sc->eeprom_size - 2), sc->eeprom_size);
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, 0);
	FUNC2(1);
	/*
	 * Shift in write opcode, address, data.
	 */
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
	FUNC3(sc, FXP_EEPROM_OPC_WRITE, 3);
	FUNC3(sc, offset, sc->eeprom_size);
	FUNC3(sc, data, 16);
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, 0);
	FUNC2(1);
	/*
	 * Wait for EEPROM to finish up.
	 */
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
	FUNC2(1);
	for (i = 0; i < 1000; i++) {
		if (FUNC0(sc, FXP_CSR_EEPROMCONTROL) & FXP_EEPROM_EEDO)
			break;
		FUNC2(50);
	}
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, 0);
	FUNC2(1);
	/*
	 * Erase/write disable.
	 */
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, FXP_EEPROM_EECS);
	FUNC3(sc, 0x4, 3);
	FUNC3(sc, 0, sc->eeprom_size);
	FUNC1(sc, FXP_CSR_EEPROMCONTROL, 0);
	FUNC2(1);
}