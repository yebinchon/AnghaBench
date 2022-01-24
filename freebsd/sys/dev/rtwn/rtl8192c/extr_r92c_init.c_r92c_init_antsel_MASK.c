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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtwn_softc {int ntxchains; int nrxchains; int /*<<< orphan*/  sc_ant; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_FPGA0_RFIFACEOE0_ANT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_LEDCFG2 ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC6(struct rtwn_softc *sc)
{
	uint32_t reg;

	if (sc->ntxchains != 1 || sc->nrxchains != 1)
		return;

	FUNC5(sc, R92C_LEDCFG2, 0, 0x80);
	FUNC4(sc, FUNC2(0), 0, 0x2000);
	reg = FUNC3(sc, FUNC1(0));
	sc->sc_ant = FUNC0(reg, R92C_FPGA0_RFIFACEOE0_ANT);	/* XXX */
	FUNC5(sc, R92C_LEDCFG2, 0x80, 0);
}