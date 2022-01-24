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
struct dc_softc {int dc_romwidth; } ;

/* Variables and functions */
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_SIO ; 
 int /*<<< orphan*/  DC_SIO_EESEL ; 
 int /*<<< orphan*/  DC_SIO_EE_CLK ; 
 int /*<<< orphan*/  DC_SIO_EE_CS ; 
 int /*<<< orphan*/  DC_SIO_EE_DATAIN ; 
 int DC_SIO_EE_DATAOUT ; 
 int /*<<< orphan*/  DC_SIO_ROMCTL_READ ; 
 int /*<<< orphan*/  FUNC4 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_softc*) ; 

__attribute__((used)) static void
FUNC6(struct dc_softc *sc)
{
	int i;

	/* Force EEPROM to idle state. */
	FUNC5(sc);

	/* Enter EEPROM access mode. */
	FUNC1(sc, DC_SIO, DC_SIO_EESEL);
	FUNC4(sc);
	FUNC3(sc, DC_SIO, DC_SIO_ROMCTL_READ);
	FUNC4(sc);
	FUNC2(sc, DC_SIO, DC_SIO_EE_CLK);
	FUNC4(sc);
	FUNC3(sc, DC_SIO, DC_SIO_EE_CS);
	FUNC4(sc);

	for (i = 3; i--;) {
		if (6 & (1 << i))
			FUNC3(sc, DC_SIO, DC_SIO_EE_DATAIN);
		else
			FUNC2(sc, DC_SIO, DC_SIO_EE_DATAIN);
		FUNC4(sc);
		FUNC3(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC4(sc);
		FUNC2(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC4(sc);
	}

	for (i = 1; i <= 12; i++) {
		FUNC3(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC4(sc);
		if (!(FUNC0(sc, DC_SIO) & DC_SIO_EE_DATAOUT)) {
			FUNC2(sc, DC_SIO, DC_SIO_EE_CLK);
			FUNC4(sc);
			break;
		}
		FUNC2(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC4(sc);
	}

	/* Turn off EEPROM access mode. */
	FUNC5(sc);

	if (i < 4 || i > 12)
		sc->dc_romwidth = 6;
	else
		sc->dc_romwidth = i;

	/* Enter EEPROM access mode. */
	FUNC1(sc, DC_SIO, DC_SIO_EESEL);
	FUNC4(sc);
	FUNC3(sc, DC_SIO, DC_SIO_ROMCTL_READ);
	FUNC4(sc);
	FUNC2(sc, DC_SIO, DC_SIO_EE_CLK);
	FUNC4(sc);
	FUNC3(sc, DC_SIO, DC_SIO_EE_CS);
	FUNC4(sc);

	/* Turn off EEPROM access mode. */
	FUNC5(sc);
}