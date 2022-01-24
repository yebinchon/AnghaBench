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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtwn_softc {int nrxchains; } ;

/* Variables and functions */
 scalar_t__ R92C_OFDM1_LSTF ; 
 int /*<<< orphan*/  R92C_RF_AC ; 
 int /*<<< orphan*/  R92C_RF_AC_MODE ; 
 int /*<<< orphan*/  R92C_RF_AC_MODE_STANDBY ; 
 int /*<<< orphan*/  R92C_RF_CHNLBW ; 
 int /*<<< orphan*/  R92C_RF_CHNLBW_LCSTART ; 
 scalar_t__ R92C_TXPAUSE ; 
 int R92C_TX_QUEUE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int) ; 
 int FUNC2 (struct rtwn_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,scalar_t__,int) ; 

void
FUNC7(struct rtwn_softc *sc)
{
	uint32_t rf_ac[2];
	uint8_t txmode;
	int i;

	txmode = FUNC2(sc, R92C_OFDM1_LSTF + 3);
	if ((txmode & 0x70) != 0) {
		/* Disable all continuous Tx. */
		FUNC6(sc, R92C_OFDM1_LSTF + 3, txmode & ~0x70);

		/* Set RF mode to standby mode. */
		for (i = 0; i < sc->nrxchains; i++) {
			rf_ac[i] = FUNC3(sc, i, R92C_RF_AC);
			FUNC5(sc, i, R92C_RF_AC,
			    FUNC0(rf_ac[i], R92C_RF_AC_MODE,
				R92C_RF_AC_MODE_STANDBY));
		}
	} else {
		/* Block all Tx queues. */
		FUNC6(sc, R92C_TXPAUSE, R92C_TX_QUEUE_ALL);
	}
	/* Start calibration. */
	FUNC4(sc, 0, R92C_RF_CHNLBW, 0, R92C_RF_CHNLBW_LCSTART);

	/* Give calibration the time to complete. */
	FUNC1(sc, 100000);	/* 100ms */

	/* Restore configuration. */
	if ((txmode & 0x70) != 0) {
		/* Restore Tx mode. */
		FUNC6(sc, R92C_OFDM1_LSTF + 3, txmode);
		/* Restore RF mode. */
		for (i = 0; i < sc->nrxchains; i++)
			FUNC5(sc, i, R92C_RF_AC, rf_ac[i]);
	} else {
		/* Unblock all Tx queues. */
		FUNC6(sc, R92C_TXPAUSE, 0x00);
	}
}