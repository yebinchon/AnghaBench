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
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int /*<<< orphan*/  rs_c2h_timeout; scalar_t__ rs_c2h_pending; scalar_t__ rs_c2h_paused; int /*<<< orphan*/  rs_c2h_report; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ R92C_AFE_PLL_CTRL ; 
 int /*<<< orphan*/  R92C_AFE_XTAL_CTRL ; 
 scalar_t__ R92C_APSD_CTRL ; 
 int R92C_APSD_CTRL_OFF ; 
 int /*<<< orphan*/  R92C_APS_FSMCO ; 
 int R92C_APS_FSMCO_AFSM_HSUS ; 
 int R92C_APS_FSMCO_APDM_HOST ; 
 int R92C_APS_FSMCO_PFM_ALDN ; 
 int /*<<< orphan*/  R92C_GPIO_IOSEL ; 
 int /*<<< orphan*/  R92C_GPIO_IO_SEL ; 
 int /*<<< orphan*/  R92C_GPIO_PIN_CTRL ; 
 scalar_t__ R92C_LDOA15_CTRL ; 
 int R92C_LDOA15_CTRL_OBUF ; 
 int /*<<< orphan*/  R92C_LDOV12D_CTRL ; 
 int /*<<< orphan*/  R92C_LDOV12D_CTRL_LDV12_EN ; 
 int /*<<< orphan*/  R92C_LEDCFG0 ; 
 scalar_t__ R92C_MAC_PINMUX_CFG ; 
 scalar_t__ R92C_MCUFWDL ; 
 int R92C_MCUFWDL_RDY ; 
 scalar_t__ R92C_RSV_CTRL ; 
 scalar_t__ R92C_SPS0_CTRL ; 
 int /*<<< orphan*/  R92C_SYS_CLKR ; 
 int R92C_SYS_CLKR_80M_SSC_DIS ; 
 int R92C_SYS_CLKR_ANA8M ; 
 int R92C_SYS_CLKR_ANAD16V_EN ; 
 int R92C_SYS_CLKR_LOADER_EN ; 
 int R92C_SYS_CLKR_RING_EN ; 
 int R92C_SYS_CLKR_SYS_EN ; 
 scalar_t__ R92C_SYS_FUNC_EN ; 
 int R92C_SYS_FUNC_EN_BB_GLB_RST ; 
 int R92C_SYS_FUNC_EN_CPUEN ; 
 int R92C_SYS_FUNC_EN_ELDR ; 
 int R92C_SYS_FUNC_EN_HWPDN ; 
 int R92C_SYS_FUNC_EN_USBA ; 
 int R92C_SYS_FUNC_EN_USBD ; 
 scalar_t__ R92C_SYS_ISO_CTRL ; 
 int R92C_SYS_ISO_CTRL_DIOE ; 
 int R92C_SYS_ISO_CTRL_DIOP ; 
 int R92C_SYS_ISO_CTRL_DIOR ; 
 int R92C_SYS_ISO_CTRL_IP2MAC ; 
 int R92C_SYS_ISO_CTRL_MD2PP ; 
 int R92C_SYS_ISO_CTRL_PA2PCIE ; 
 int R92C_SYS_ISO_CTRL_PD2CORE ; 
 int R92C_SYS_ISO_CTRL_PWC_EV12V ; 
 scalar_t__ R92C_TXPAUSE ; 
 int R92C_TX_QUEUE_ALL ; 
 int /*<<< orphan*/  RTWN_FW_RESET_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtwn_softc*,scalar_t__) ; 
 int FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rtwn_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC10(struct rtwn_softc *sc)
{
#ifndef RTWN_WITHOUT_UCODE
	struct r92c_softc *rs = sc->sc_priv;
#endif
	uint32_t reg;
	int error;

	/* Deinit C2H event handler. */
#ifndef RTWN_WITHOUT_UCODE
	FUNC0(&rs->rs_c2h_report);
	rs->rs_c2h_paused = 0;
	rs->rs_c2h_pending = 0;
	rs->rs_c2h_timeout = hz;
#endif

	/* Block all Tx queues. */
	error = FUNC7(sc, R92C_TXPAUSE, R92C_TX_QUEUE_ALL);
	if (error == ENXIO)	/* hardware gone */
		return;

	/* Disable RF */
	FUNC5(sc, 0, 0, 0);

	FUNC7(sc, R92C_APSD_CTRL, R92C_APSD_CTRL_OFF);

	/* Reset BB state machine */
	FUNC7(sc, R92C_SYS_FUNC_EN,
	    R92C_SYS_FUNC_EN_USBD | R92C_SYS_FUNC_EN_USBA |
	    R92C_SYS_FUNC_EN_BB_GLB_RST);
	FUNC7(sc, R92C_SYS_FUNC_EN,
	    R92C_SYS_FUNC_EN_USBD | R92C_SYS_FUNC_EN_USBA);

	/*
	 * Reset digital sequence
	 */
#ifndef RTWN_WITHOUT_UCODE
	if (FUNC2(sc, R92C_MCUFWDL) & R92C_MCUFWDL_RDY) {
		/* Reset MCU ready status */
		FUNC7(sc, R92C_MCUFWDL, 0);

		/* If firmware in ram code, do reset */
		FUNC1(sc, RTWN_FW_RESET_SHUTDOWN);
	}
#endif

	/* Reset MAC and Enable 8051 */
	FUNC7(sc, R92C_SYS_FUNC_EN + 1,
	    (R92C_SYS_FUNC_EN_CPUEN |
	     R92C_SYS_FUNC_EN_ELDR |
	     R92C_SYS_FUNC_EN_HWPDN) >> 8);

	/* Reset MCU ready status */
	FUNC7(sc, R92C_MCUFWDL, 0);

	/* Disable MAC clock */
	FUNC8(sc, R92C_SYS_CLKR,
	    R92C_SYS_CLKR_ANAD16V_EN |
	    R92C_SYS_CLKR_ANA8M |
	    R92C_SYS_CLKR_LOADER_EN |
	    R92C_SYS_CLKR_80M_SSC_DIS |
	    R92C_SYS_CLKR_SYS_EN |
	    R92C_SYS_CLKR_RING_EN |
	    0x4000);

	/* Disable AFE PLL */
	FUNC7(sc, R92C_AFE_PLL_CTRL, 0x80);

	/* Gated AFE DIG_CLOCK */
	FUNC8(sc, R92C_AFE_XTAL_CTRL, 0x880F);

	/* Isolated digital to PON */
	FUNC7(sc, R92C_SYS_ISO_CTRL,
	    R92C_SYS_ISO_CTRL_MD2PP |
	    R92C_SYS_ISO_CTRL_PA2PCIE |
	    R92C_SYS_ISO_CTRL_PD2CORE |
	    R92C_SYS_ISO_CTRL_IP2MAC |
	    R92C_SYS_ISO_CTRL_DIOP |
	    R92C_SYS_ISO_CTRL_DIOE);

	/*
	 * Pull GPIO PIN to balance level and LED control
	 */
	/* 1. Disable GPIO[7:0] */
	FUNC8(sc, R92C_GPIO_IOSEL, 0x0000);

	reg = FUNC4(sc, R92C_GPIO_PIN_CTRL) & ~0x0000ff00;
	reg |= ((reg << 8) & 0x0000ff00) | 0x00ff0000;
	FUNC9(sc, R92C_GPIO_PIN_CTRL, reg);

	/* Disable GPIO[10:8] */
	FUNC7(sc, R92C_MAC_PINMUX_CFG, 0x00);

	reg = FUNC3(sc, R92C_GPIO_IO_SEL) & ~0x00f0;
	reg |= (((reg & 0x000f) << 4) | 0x0780);
	FUNC8(sc, R92C_GPIO_IO_SEL, reg);

	/* Disable LED0 & 1 */
	FUNC8(sc, R92C_LEDCFG0, 0x8080);

	/*
	 * Reset digital sequence
	 */
	/* Disable ELDR clock */
	FUNC8(sc, R92C_SYS_CLKR,
	    R92C_SYS_CLKR_ANAD16V_EN |
	    R92C_SYS_CLKR_ANA8M |
	    R92C_SYS_CLKR_LOADER_EN |
	    R92C_SYS_CLKR_80M_SSC_DIS |
	    R92C_SYS_CLKR_SYS_EN |
	    R92C_SYS_CLKR_RING_EN |
	    0x4000);

	/* Isolated ELDR to PON */
	FUNC7(sc, R92C_SYS_ISO_CTRL + 1,
	    (R92C_SYS_ISO_CTRL_DIOR |
	     R92C_SYS_ISO_CTRL_PWC_EV12V) >> 8);

	/*
	 * Disable analog sequence
	 */
	/* Disable A15 power */
	FUNC7(sc, R92C_LDOA15_CTRL, R92C_LDOA15_CTRL_OBUF);
	/* Disable digital core power */
	FUNC6(sc, R92C_LDOV12D_CTRL,
	    R92C_LDOV12D_CTRL_LDV12_EN, 0);

	/* Enter PFM mode */
	FUNC7(sc, R92C_SPS0_CTRL, 0x23);

	/* Set USB suspend */
	FUNC8(sc, R92C_APS_FSMCO,
	    R92C_APS_FSMCO_APDM_HOST |
	    R92C_APS_FSMCO_AFSM_HSUS |
	    R92C_APS_FSMCO_PFM_ALDN);

	/* Lock ISO/CLK/Power control register. */
	FUNC7(sc, R92C_RSV_CTRL, 0x0E);
}