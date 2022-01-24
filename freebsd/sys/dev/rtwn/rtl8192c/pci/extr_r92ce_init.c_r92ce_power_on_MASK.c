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
struct rtwn_softc {scalar_t__ sc_hwcrypto; int /*<<< orphan*/  sc_dev; struct r92c_softc* sc_priv; } ;
struct r92c_softc {scalar_t__ board_type; int chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EPERM ; 
 int ETIMEDOUT ; 
 scalar_t__ R92C_AFE_XTAL_CTRL ; 
 scalar_t__ R92C_APSD_CTRL ; 
 int R92C_APSD_CTRL_OFF ; 
 int R92C_APSD_CTRL_OFF_STATUS ; 
 scalar_t__ R92C_APS_FSMCO ; 
 int R92C_APS_FSMCO_AFSM_PCIE ; 
 int R92C_APS_FSMCO_APFM_ONMAC ; 
 int R92C_APS_FSMCO_PDN_EN ; 
 int R92C_APS_FSMCO_PFM_ALDN ; 
 int R92C_APS_FSMCO_SOP_ABG ; 
 int R92C_APS_FSMCO_SOP_AMB ; 
 int R92C_APS_FSMCO_XOP_BTCK ; 
 scalar_t__ R92C_BOARD_TYPE_DONGLE ; 
 int R92C_CHIP_92C ; 
 scalar_t__ R92C_CR ; 
 int R92C_CR_ENSEC ; 
 int R92C_CR_HCI_RXDMA_EN ; 
 int R92C_CR_HCI_TXDMA_EN ; 
 int R92C_CR_MACRXEN ; 
 int R92C_CR_MACTXEN ; 
 int R92C_CR_PROTOCOL_EN ; 
 int R92C_CR_RXDMA_EN ; 
 int R92C_CR_SCHEDULE_EN ; 
 int R92C_CR_TXDMA_EN ; 
 scalar_t__ R92C_GPIO_IO_SEL ; 
 int R92C_GPIO_IO_SEL_RFKILL ; 
 scalar_t__ R92C_GPIO_MUXCFG ; 
 int R92C_GPIO_MUXCFG_RFKILL ; 
 int /*<<< orphan*/  R92C_INT_MIG ; 
 int /*<<< orphan*/  R92C_MCUTST_1 ; 
 scalar_t__ R92C_PCIE_CTRL_REG ; 
 scalar_t__ R92C_RSV_CTRL ; 
 scalar_t__ R92C_SPS0_CTRL ; 
 scalar_t__ R92C_SYS_ISO_CTRL ; 
 int R92C_SYS_ISO_CTRL_DIOR ; 
 int R92C_SYS_ISO_CTRL_PWC_EV12V ; 
 scalar_t__ RTWN_CRYPTO_SW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct rtwn_softc*,scalar_t__) ; 
 int FUNC3 (struct rtwn_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC10(struct rtwn_softc *sc)
{
	struct r92c_softc *rs = sc->sc_priv;
	uint32_t reg;
	int ntries;

	/* Wait for autoload done bit. */
	for (ntries = 0; ntries < 1000; ntries++) {
		if (FUNC2(sc, R92C_APS_FSMCO) & R92C_APS_FSMCO_PFM_ALDN)
			break;
		FUNC0(5);
	}
	if (ntries == 1000) {
		FUNC1(sc->sc_dev,
		    "timeout waiting for chip autoload\n");
		return (ETIMEDOUT);
	}

	/* Unlock ISO/CLK/Power control register. */
	FUNC7(sc, R92C_RSV_CTRL, 0);

	if (rs->board_type != R92C_BOARD_TYPE_DONGLE) {
		/* bt coex */
		FUNC6(sc, R92C_APS_FSMCO, 0,
		    R92C_APS_FSMCO_SOP_ABG |
		    R92C_APS_FSMCO_SOP_AMB |
		    R92C_APS_FSMCO_XOP_BTCK);
	}

	/* Move SPS into PWM mode. */
	FUNC7(sc, R92C_SPS0_CTRL, 0x2b);

	/* Set low byte to 0x0f, leave others unchanged. */
	FUNC7(sc, R92C_AFE_XTAL_CTRL, 0x0f);

	/* TODO: check if we need this for 8188CE */
	if (rs->board_type != R92C_BOARD_TYPE_DONGLE) {
		/* bt coex */
		/* XXX magic from linux */
		FUNC6(sc, R92C_AFE_XTAL_CTRL, 0x024800, 0);
	}

	FUNC5(sc, R92C_SYS_ISO_CTRL, 0xff00,
	    R92C_SYS_ISO_CTRL_PWC_EV12V | R92C_SYS_ISO_CTRL_DIOR);

	FUNC0(200);

	/* TODO: linux does additional btcoex stuff here */

	/* Auto enable WLAN. */
	FUNC5(sc, R92C_APS_FSMCO, 0, R92C_APS_FSMCO_APFM_ONMAC);
	for (ntries = 0; ntries < 1000; ntries++) {
		if (!(FUNC3(sc, R92C_APS_FSMCO) &
		    R92C_APS_FSMCO_APFM_ONMAC))
			break;
		FUNC0(5);
	}
	if (ntries == 1000) {
		FUNC1(sc->sc_dev, "timeout waiting for MAC auto ON\n");
		return (ETIMEDOUT);
	}

	/* Enable radio, GPIO and LED functions. */
	FUNC8(sc, R92C_APS_FSMCO,
	    R92C_APS_FSMCO_AFSM_PCIE |
	    R92C_APS_FSMCO_PDN_EN |
	    R92C_APS_FSMCO_PFM_ALDN);
	/* Release RF digital isolation. */
	FUNC5(sc, R92C_SYS_ISO_CTRL, R92C_SYS_ISO_CTRL_DIOR, 0);

	if (rs->chip & R92C_CHIP_92C)
		FUNC7(sc, R92C_PCIE_CTRL_REG + 3, 0x77);
	else
		FUNC7(sc, R92C_PCIE_CTRL_REG + 3, 0x22);

	FUNC9(sc, R92C_INT_MIG, 0);

	if (rs->board_type != R92C_BOARD_TYPE_DONGLE) {
		/* bt coex */
		/* XXX magic from linux */
		FUNC4(sc, R92C_AFE_XTAL_CTRL + 2, 0x02, 0);
	}

	FUNC4(sc, R92C_GPIO_MUXCFG, R92C_GPIO_MUXCFG_RFKILL, 0);

	reg = FUNC2(sc, R92C_GPIO_IO_SEL);
	if (!(reg & R92C_GPIO_IO_SEL_RFKILL)) {
		FUNC1(sc->sc_dev,
		    "radio is disabled by hardware switch\n");
		/* XXX how driver will know when radio will be enabled? */
		return (EPERM);
	}

	/* Initialize MAC. */
	FUNC4(sc, R92C_APSD_CTRL, R92C_APSD_CTRL_OFF, 0);
	for (ntries = 0; ntries < 200; ntries++) {
		if (!(FUNC2(sc, R92C_APSD_CTRL) &
		    R92C_APSD_CTRL_OFF_STATUS))
			break;
		FUNC0(500);
	}
	if (ntries == 200) {
		FUNC1(sc->sc_dev,
		    "timeout waiting for MAC initialization\n");
		return (ETIMEDOUT);
	}

	/* Enable MAC DMA/WMAC/SCHEDULE/SEC blocks. */
	FUNC5(sc, R92C_CR, 0,
	    R92C_CR_HCI_TXDMA_EN | R92C_CR_HCI_RXDMA_EN |
	    R92C_CR_TXDMA_EN | R92C_CR_RXDMA_EN | R92C_CR_PROTOCOL_EN |
	    R92C_CR_SCHEDULE_EN | R92C_CR_MACTXEN | R92C_CR_MACRXEN |
	    ((sc->sc_hwcrypto != RTWN_CRYPTO_SW) ? R92C_CR_ENSEC : 0));

	FUNC9(sc, R92C_MCUTST_1, 0x0);

	return (0);
}