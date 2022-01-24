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
struct rtwn_softc {scalar_t__ sc_hwcrypto; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ R88E_XCK_OUT_CTRL ; 
 int R88E_XCK_OUT_CTRL_EN ; 
 scalar_t__ R92C_AFE_XTAL_CTRL ; 
 scalar_t__ R92C_AFE_XTAL_CTRL_EXT ; 
 scalar_t__ R92C_APS_FSMCO ; 
 int R92C_APS_FSMCO_AFSM_HSUS ; 
 int R92C_APS_FSMCO_AFSM_PCIE ; 
 int R92C_APS_FSMCO_APDM_HPDN ; 
 int R92C_APS_FSMCO_APFM_ONMAC ; 
 int R92C_APS_FSMCO_PDN_EN ; 
 int R92C_APS_FSMCO_SUS_HOST ; 
 scalar_t__ R92C_CR ; 
 int R92C_CR_CALTMR_EN ; 
 int R92C_CR_ENSEC ; 
 int R92C_CR_HCI_RXDMA_EN ; 
 int R92C_CR_HCI_TXDMA_EN ; 
 int R92C_CR_PROTOCOL_EN ; 
 int R92C_CR_RXDMA_EN ; 
 int R92C_CR_SCHEDULE_EN ; 
 int R92C_CR_TXDMA_EN ; 
 scalar_t__ R92C_GPIO_MUXCFG ; 
 int R92C_GPIO_MUXCFG_ENSIC ; 
 int /*<<< orphan*/  R92C_INT_MIG ; 
 scalar_t__ R92C_LPLDO_CTRL ; 
 int R92C_LPLDO_CTRL_SLEEP ; 
 int /*<<< orphan*/  R92C_MCUTST_1 ; 
 scalar_t__ R92C_PCIE_CTRL_REG ; 
 int /*<<< orphan*/  R92C_RSV_CTRL ; 
 scalar_t__ R92C_SYS_CLKR ; 
 scalar_t__ R92C_SYS_FUNC_EN ; 
 int R92C_SYS_FUNC_EN_BBRSTB ; 
 int R92C_SYS_FUNC_EN_BB_GLB_RST ; 
 scalar_t__ RTWN_CRYPTO_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int) ; 
 int FUNC2 (struct rtwn_softc*,scalar_t__) ; 
 int FUNC3 (struct rtwn_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(struct rtwn_softc *sc)
{
	int ntries;

	/* Disable XTAL output for power saving. */
	FUNC4(sc, R88E_XCK_OUT_CTRL, R88E_XCK_OUT_CTRL_EN, 0);

	/* Unlock ISO/CLK/Power control register. */
	FUNC6(sc, R92C_APS_FSMCO, R92C_APS_FSMCO_APDM_HPDN, 0);
	FUNC7(sc, R92C_RSV_CTRL, 0);

	/* Wait for power ready bit */
	for(ntries = 0; ntries < 5000; ntries++) {
		if (FUNC3(sc, R92C_APS_FSMCO) & R92C_APS_FSMCO_SUS_HOST)
			break;
		FUNC1(sc, 10);
	}
	if (ntries == 5000) {
		FUNC0(sc->sc_dev,
		    "timeout waiting for chip power up\n");
		return (ETIMEDOUT);
	}

	/* Reset BB. */
	FUNC4(sc, R92C_SYS_FUNC_EN,
	    R92C_SYS_FUNC_EN_BBRSTB | R92C_SYS_FUNC_EN_BB_GLB_RST, 0);

	/* schmit trigger */
	FUNC4(sc, R92C_AFE_XTAL_CTRL + 2, 0, 0x80);

	/* Disable HWPDN. */
	FUNC5(sc, R92C_APS_FSMCO,
	    R92C_APS_FSMCO_APDM_HPDN, 0, 1);

	/* Disable WL suspend. */
	FUNC5(sc, R92C_APS_FSMCO,
	    R92C_APS_FSMCO_AFSM_HSUS | R92C_APS_FSMCO_AFSM_PCIE, 0, 1);

	/* Auto-enable WLAN */
	FUNC5(sc, R92C_APS_FSMCO,
	    0, R92C_APS_FSMCO_APFM_ONMAC, 1);
	for (ntries = 0; ntries < 5000; ntries++) {
		if (!(FUNC2(sc, R92C_APS_FSMCO) &
		    R92C_APS_FSMCO_APFM_ONMAC))
			break;
		FUNC1(sc, 10);
	}
	if (ntries == 5000)
		return (ETIMEDOUT);

	FUNC4(sc, R92C_PCIE_CTRL_REG + 2, 0, 0x04);

	/* Enable LDO normal mode. */
	FUNC4(sc, R92C_LPLDO_CTRL, R92C_LPLDO_CTRL_SLEEP, 0);

	FUNC4(sc, R92C_APS_FSMCO, 0, R92C_APS_FSMCO_PDN_EN);
	FUNC4(sc, R92C_PCIE_CTRL_REG + 2, 0, 0x04);
	FUNC4(sc, R92C_AFE_XTAL_CTRL_EXT + 1, 0, 0x02);
	FUNC4(sc, R92C_SYS_CLKR, 0, 0x08);
	FUNC6(sc, R92C_GPIO_MUXCFG, R92C_GPIO_MUXCFG_ENSIC, 0);

	/* Enable MAC DMA/WMAC/SCHEDULE/SEC blocks. */
	FUNC8(sc, R92C_CR, 0);
	FUNC6(sc, R92C_CR, 0,
	    R92C_CR_HCI_TXDMA_EN | R92C_CR_TXDMA_EN |
	    R92C_CR_HCI_RXDMA_EN | R92C_CR_RXDMA_EN |
	    R92C_CR_PROTOCOL_EN | R92C_CR_SCHEDULE_EN |
	    ((sc->sc_hwcrypto != RTWN_CRYPTO_SW) ? R92C_CR_ENSEC : 0) |
	    R92C_CR_CALTMR_EN);

	FUNC9(sc, R92C_INT_MIG, 0);
	FUNC9(sc, R92C_MCUTST_1, 0);

	return (0);
}