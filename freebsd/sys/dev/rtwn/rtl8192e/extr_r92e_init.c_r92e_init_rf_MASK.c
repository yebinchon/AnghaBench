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
struct rtwn_softc {int nrxchains; int /*<<< orphan*/ * rf_prog; struct r92e_softc* sc_priv; } ;
struct r92e_softc {int /*<<< orphan*/ * rf_chnlbw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  R92C_FPGA0_RFMOD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  R92C_HSSI_PARAM2_ADDR_LENGTH ; 
 int /*<<< orphan*/  R92C_HSSI_PARAM2_DATA_LENGTH ; 
 int R92C_RFMOD_CCK_EN ; 
 int R92C_RFMOD_OFDM_EN ; 
 int /*<<< orphan*/  R92C_RF_CHNLBW ; 
 scalar_t__ FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int,int /*<<< orphan*/ ) ; 

void
FUNC8(struct rtwn_softc *sc)
{
	struct r92e_softc *rs = sc->sc_priv;
	uint32_t reg, type;
	int i, chain, idx, off;

	for (chain = 0, i = 0; chain < sc->nrxchains; chain++, i++) {
		/* Save RF_ENV control type. */
		idx = chain / 2;
		off = (chain % 2) * 16;
		reg = FUNC4(sc, FUNC1(idx));
		type = (reg >> off) & 0x10;

		/* Set RF_ENV enable. */
		FUNC5(sc, FUNC0(chain),
		    0, 0x100000);
		FUNC6(sc, 1);
		/* Set RF_ENV output high. */
		FUNC5(sc, FUNC0(chain),
		    0, 0x10);
		FUNC6(sc, 1);
		/* Set address and data lengths of RF registers. */
		FUNC5(sc, FUNC2(chain),
		    R92C_HSSI_PARAM2_ADDR_LENGTH, 0);
		FUNC6(sc, 1);
		FUNC5(sc, FUNC2(chain),
		    R92C_HSSI_PARAM2_DATA_LENGTH, 0);
		FUNC6(sc, 1);

		/* Write RF initialization values for this chain. */
		i += FUNC3(sc, &sc->rf_prog[i], chain);

		/* Cache RF register CHNLBW. */
		rs->rf_chnlbw[chain] = FUNC7(sc, chain, R92C_RF_CHNLBW);
	}

	/* Turn CCK and OFDM blocks on. */
	FUNC5(sc, R92C_FPGA0_RFMOD, 0, R92C_RFMOD_CCK_EN);
	FUNC5(sc, R92C_FPGA0_RFMOD, 0, R92C_RFMOD_OFDM_EN);
}