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
struct bge_softc {int /*<<< orphan*/  bge_dev; } ;

/* Variables and functions */
 int BGE_EEADDR_DONE ; 
 int BGE_EEADDR_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BGE_EE_ADDR ; 
 int /*<<< orphan*/  BGE_EE_DATA ; 
 int BGE_EE_READCMD ; 
 int /*<<< orphan*/  BGE_HALFCLK_384SCL ; 
 int /*<<< orphan*/  BGE_MISC_LOCAL_CTL ; 
 int /*<<< orphan*/  BGE_MLC_AUTO_EEPROM ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BGE_TIMEOUT ; 
 int FUNC2 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static uint8_t
FUNC6(struct bge_softc *sc, int addr, uint8_t *dest)
{
	int i;
	uint32_t byte = 0;

	/*
	 * Enable use of auto EEPROM access so we can avoid
	 * having to use the bitbang method.
	 */
	FUNC1(sc, BGE_MISC_LOCAL_CTL, BGE_MLC_AUTO_EEPROM);

	/* Reset the EEPROM, load the clock period. */
	FUNC3(sc, BGE_EE_ADDR,
	    BGE_EEADDR_RESET | FUNC0(BGE_HALFCLK_384SCL));
	FUNC4(20);

	/* Issue the read EEPROM command. */
	FUNC3(sc, BGE_EE_ADDR, BGE_EE_READCMD | addr);

	/* Wait for completion */
	for(i = 0; i < BGE_TIMEOUT * 10; i++) {
		FUNC4(10);
		if (FUNC2(sc, BGE_EE_ADDR) & BGE_EEADDR_DONE)
			break;
	}

	if (i == BGE_TIMEOUT * 10) {
		FUNC5(sc->bge_dev, "EEPROM read timed out\n");
		return (1);
	}

	/* Get result. */
	byte = FUNC2(sc, BGE_EE_DATA);

	*dest = (byte >> ((addr % 4) * 8)) & 0xFF;

	return (0);
}