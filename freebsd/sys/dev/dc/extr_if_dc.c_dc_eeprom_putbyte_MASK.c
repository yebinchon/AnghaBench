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
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DC_EECMD_READ ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_SIO ; 
 int /*<<< orphan*/  DC_SIO_EE_CLK ; 
 int /*<<< orphan*/  DC_SIO_EE_DATAIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dc_softc*) ; 

__attribute__((used)) static void
FUNC5(struct dc_softc *sc, int addr)
{
	int d, i;

	d = DC_EECMD_READ >> 6;
	for (i = 3; i--; ) {
		if (d & (1 << i))
			FUNC1(sc, DC_SIO, DC_SIO_EE_DATAIN);
		else
			FUNC0(sc, DC_SIO, DC_SIO_EE_DATAIN);
		FUNC4(sc);
		FUNC1(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC4(sc);
		FUNC0(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC4(sc);
	}

	/*
	 * Feed in each bit and strobe the clock.
	 */
	for (i = sc->dc_romwidth; i--;) {
		if (addr & (1 << i)) {
			FUNC3(DC_SIO_EE_DATAIN);
		} else {
			FUNC2(DC_SIO_EE_DATAIN);
		}
		FUNC4(sc);
		FUNC3(DC_SIO_EE_CLK);
		FUNC4(sc);
		FUNC2(DC_SIO_EE_CLK);
		FUNC4(sc);
	}
}