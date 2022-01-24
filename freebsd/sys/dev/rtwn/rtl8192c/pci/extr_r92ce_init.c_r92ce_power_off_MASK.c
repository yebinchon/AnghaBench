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
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int /*<<< orphan*/  rs_c2h_timeout; scalar_t__ rs_c2h_pending; scalar_t__ rs_c2h_paused; int /*<<< orphan*/  rs_c2h_report; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_AFE_PLL_CTRL ; 
 int /*<<< orphan*/  R92C_AFE_XTAL_CTRL ; 
 int /*<<< orphan*/  R92C_APS_FSMCO ; 
 int R92C_APS_FSMCO_PDN_EN ; 
 int /*<<< orphan*/  R92C_CR ; 
 int R92C_CR_ENSEC ; 
 int R92C_CR_HCI_RXDMA_EN ; 
 int R92C_CR_HCI_TXDMA_EN ; 
 int R92C_CR_MACRXEN ; 
 int R92C_CR_MACTXEN ; 
 int R92C_CR_PROTOCOL_EN ; 
 int R92C_CR_RXDMA_EN ; 
 int R92C_CR_SCHEDULE_EN ; 
 int R92C_CR_TXDMA_EN ; 
 int /*<<< orphan*/  R92C_HIMR ; 
 int /*<<< orphan*/  R92C_HISR ; 
 int /*<<< orphan*/  R92C_MCUFWDL ; 
 int R92C_MCUFWDL_RAM_DL_SEL ; 
 int /*<<< orphan*/  R92C_RF_CTRL ; 
 int /*<<< orphan*/  R92C_RSV_CTRL ; 
 int /*<<< orphan*/  R92C_SPS0_CTRL ; 
 int /*<<< orphan*/  R92C_SYS_FUNC_EN ; 
 int /*<<< orphan*/  R92C_SYS_FUNC_EN_BB_GLB_RST ; 
 int /*<<< orphan*/  R92C_TXPAUSE ; 
 int R92C_TX_QUEUE_ALL ; 
 int /*<<< orphan*/  RTWN_FW_RESET_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct rtwn_softc *sc)
{
#ifndef RTWN_WITHOUT_UCODE
	struct r92c_softc *rs = sc->sc_priv;

	/* Deinit C2H event handler. */
	FUNC0(&rs->rs_c2h_report);
	rs->rs_c2h_paused = 0;
	rs->rs_c2h_pending = 0;
	rs->rs_c2h_timeout = hz;
#endif

	/* Stop hardware. */
	/* Disable interrupts. */
	FUNC7(sc, R92C_HISR, 0);
	FUNC7(sc, R92C_HIMR, 0);

	/* Stop hardware. */
	FUNC5(sc, R92C_TXPAUSE, R92C_TX_QUEUE_ALL);

	/* Turn off RF. */
	FUNC5(sc, R92C_RF_CTRL, 0);

	/* Reset BB state machine */
	FUNC3(sc, R92C_SYS_FUNC_EN, 0, R92C_SYS_FUNC_EN_BB_GLB_RST);
	FUNC3(sc, R92C_SYS_FUNC_EN, R92C_SYS_FUNC_EN_BB_GLB_RST, 0);

	/* Disable MAC DMA/WMAC/SCHEDULE/SEC blocks. */
	FUNC4(sc, R92C_CR,
	    R92C_CR_HCI_TXDMA_EN | R92C_CR_HCI_RXDMA_EN |
	    R92C_CR_TXDMA_EN | R92C_CR_RXDMA_EN | R92C_CR_PROTOCOL_EN |
	    R92C_CR_SCHEDULE_EN | R92C_CR_MACTXEN | R92C_CR_MACRXEN |
	    R92C_CR_ENSEC,
	    0);

	/* If firmware in ram code, do reset. */
#ifndef RTWN_WITHOUT_UCODE
	if (FUNC2(sc, R92C_MCUFWDL) & R92C_MCUFWDL_RAM_DL_SEL)
		FUNC1(sc, RTWN_FW_RESET_SHUTDOWN);
#endif

	/* TODO: linux does additional btcoex stuff here */
	FUNC6(sc, R92C_AFE_PLL_CTRL, 0x80); /* linux magic number */
	FUNC5(sc, R92C_SPS0_CTRL, 0x23); /* ditto */
	FUNC5(sc, R92C_AFE_XTAL_CTRL, 0x0e); /* different with btcoex */
	FUNC5(sc, R92C_RSV_CTRL, 0x0e);
	FUNC5(sc, R92C_APS_FSMCO, R92C_APS_FSMCO_PDN_EN);
}