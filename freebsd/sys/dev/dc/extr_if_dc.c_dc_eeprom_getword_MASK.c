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
struct dc_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_SIO ; 
 int /*<<< orphan*/  DC_SIO_EESEL ; 
 int /*<<< orphan*/  DC_SIO_EE_CLK ; 
 int /*<<< orphan*/  DC_SIO_EE_CS ; 
 int DC_SIO_EE_DATAOUT ; 
 int /*<<< orphan*/  DC_SIO_ROMCTL_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct dc_softc*,int) ; 

__attribute__((used)) static void
FUNC9(struct dc_softc *sc, int addr, uint16_t *dest)
{
	int i;
	uint16_t word = 0;

	/* Force EEPROM to idle state. */
	FUNC7(sc);

	/* Enter EEPROM access mode. */
	FUNC1(sc, DC_SIO, DC_SIO_EESEL);
	FUNC6(sc);
	FUNC3(sc, DC_SIO,  DC_SIO_ROMCTL_READ);
	FUNC6(sc);
	FUNC2(sc, DC_SIO, DC_SIO_EE_CLK);
	FUNC6(sc);
	FUNC3(sc, DC_SIO, DC_SIO_EE_CS);
	FUNC6(sc);

	/*
	 * Send address of word we want to read.
	 */
	FUNC8(sc, addr);

	/*
	 * Start reading bits from EEPROM.
	 */
	for (i = 0x8000; i; i >>= 1) {
		FUNC5(DC_SIO_EE_CLK);
		FUNC6(sc);
		if (FUNC0(sc, DC_SIO) & DC_SIO_EE_DATAOUT)
			word |= i;
		FUNC6(sc);
		FUNC4(DC_SIO_EE_CLK);
		FUNC6(sc);
	}

	/* Turn off EEPROM access mode. */
	FUNC7(sc);

	*dest = word;
}