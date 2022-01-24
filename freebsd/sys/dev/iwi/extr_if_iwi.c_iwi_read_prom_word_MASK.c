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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct iwi_softc {int dummy; } ;

/* Variables and functions */
 int IWI_EEPROM_C ; 
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*,int) ; 
 int IWI_EEPROM_D ; 
 int IWI_EEPROM_Q ; 
 int IWI_EEPROM_S ; 
 int IWI_EEPROM_SHIFT_D ; 
 int IWI_EEPROM_SHIFT_Q ; 
 int /*<<< orphan*/  IWI_MEM_EEPROM_CTL ; 
 int FUNC1 (struct iwi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t
FUNC2(struct iwi_softc *sc, uint8_t addr)
{
	uint32_t tmp;
	uint16_t val;
	int n;

	/* clock C once before the first command */
	FUNC0(sc, 0);
	FUNC0(sc, IWI_EEPROM_S);
	FUNC0(sc, IWI_EEPROM_S | IWI_EEPROM_C);
	FUNC0(sc, IWI_EEPROM_S);

	/* write start bit (1) */
	FUNC0(sc, IWI_EEPROM_S | IWI_EEPROM_D);
	FUNC0(sc, IWI_EEPROM_S | IWI_EEPROM_D | IWI_EEPROM_C);

	/* write READ opcode (10) */
	FUNC0(sc, IWI_EEPROM_S | IWI_EEPROM_D);
	FUNC0(sc, IWI_EEPROM_S | IWI_EEPROM_D | IWI_EEPROM_C);
	FUNC0(sc, IWI_EEPROM_S);
	FUNC0(sc, IWI_EEPROM_S | IWI_EEPROM_C);

	/* write address A7-A0 */
	for (n = 7; n >= 0; n--) {
		FUNC0(sc, IWI_EEPROM_S |
		    (((addr >> n) & 1) << IWI_EEPROM_SHIFT_D));
		FUNC0(sc, IWI_EEPROM_S |
		    (((addr >> n) & 1) << IWI_EEPROM_SHIFT_D) | IWI_EEPROM_C);
	}

	FUNC0(sc, IWI_EEPROM_S);

	/* read data Q15-Q0 */
	val = 0;
	for (n = 15; n >= 0; n--) {
		FUNC0(sc, IWI_EEPROM_S | IWI_EEPROM_C);
		FUNC0(sc, IWI_EEPROM_S);
		tmp = FUNC1(sc, IWI_MEM_EEPROM_CTL);
		val |= ((tmp & IWI_EEPROM_Q) >> IWI_EEPROM_SHIFT_Q) << n;
	}

	FUNC0(sc, 0);

	/* clear Chip Select and clock C */
	FUNC0(sc, IWI_EEPROM_S);
	FUNC0(sc, 0);
	FUNC0(sc, IWI_EEPROM_C);

	return val;
}