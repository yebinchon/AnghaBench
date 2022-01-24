#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {int dot_clock; } ;
struct dwc_hdmi_softc {int /*<<< orphan*/  sc_dev; TYPE_1__ sc_mode; } ;

/* Variables and functions */
 int CKCALCTRL_OVERRIDE ; 
 int CKSYMTXCTRL_OVERRIDE ; 
 int CKSYMTXCTRL_TX_CK_SYMON ; 
 int CKSYMTXCTRL_TX_SYMON ; 
 int CKSYMTXCTRL_TX_TRAON ; 
 int CKSYMTXCTRL_TX_TRBON ; 
 int CPCE_CTRL_185 ; 
 int CPCE_CTRL_370 ; 
 int CPCE_CTRL_45_25 ; 
 int CPCE_CTRL_92_50 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GMPCTRL_185 ; 
 int GMPCTRL_370 ; 
 int GMPCTRL_45_25 ; 
 int GMPCTRL_92_50 ; 
 int /*<<< orphan*/  HDMI_MC_FLOWCTRL ; 
 int /*<<< orphan*/  HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS ; 
 int /*<<< orphan*/  HDMI_MC_HEACPHY_RST ; 
 int /*<<< orphan*/  HDMI_MC_HEACPHY_RST_ASSERT ; 
 int /*<<< orphan*/  HDMI_MC_PHYRSTZ ; 
 int /*<<< orphan*/  HDMI_MC_PHYRSTZ_ASSERT ; 
 int /*<<< orphan*/  HDMI_MC_PHYRSTZ_DEASSERT ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_SLAVE_ADDR ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2 ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_CKCALCTRL ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_CKSYMTXCTRL ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_CPCE_CTRL ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_CURRCTRL ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_GMPCTRL ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_MSM_CTRL ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_PLLPHBYCTRL ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_TXTERM ; 
 int /*<<< orphan*/  HDMI_PHY_I2C_VLEVCTRL ; 
 int /*<<< orphan*/  HDMI_PHY_STAT0 ; 
 int HDMI_PHY_TX_PHY_LOCK ; 
 int MSM_CTRL_FB_CLK ; 
 int FUNC1 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 
 int TXTERM_133 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc_hdmi_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc_hdmi_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc_hdmi_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc_hdmi_softc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc_hdmi_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dwc_hdmi_softc*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(struct dwc_hdmi_softc *sc)
{
	uint8_t val;
	uint8_t msec;

	FUNC4(sc, HDMI_MC_FLOWCTRL, HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS);

	/* gen2 tx power off */
	FUNC9(sc, 0);

	/* gen2 pddq */
	FUNC8(sc, 1);

	/* PHY reset */
	FUNC4(sc, HDMI_MC_PHYRSTZ, HDMI_MC_PHYRSTZ_DEASSERT);
	FUNC4(sc, HDMI_MC_PHYRSTZ, HDMI_MC_PHYRSTZ_ASSERT);

	FUNC4(sc, HDMI_MC_HEACPHY_RST, HDMI_MC_HEACPHY_RST_ASSERT);

	FUNC11(sc, 1);
	FUNC4(sc, HDMI_PHY_I2CM_SLAVE_ADDR, HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2);
	FUNC11(sc, 0);

	/*
	 * Following initialization are for 8bit per color case
	 */

	/*
	 * PLL/MPLL config, see section 24.7.22 in TRM
	 *  config, see section 24.7.22
	 */
	if (sc->sc_mode.dot_clock*1000 <= 45250000) {
		FUNC10(sc, CPCE_CTRL_45_25, HDMI_PHY_I2C_CPCE_CTRL);
		FUNC10(sc, GMPCTRL_45_25, HDMI_PHY_I2C_GMPCTRL);
	} else if (sc->sc_mode.dot_clock*1000 <= 92500000) {
		FUNC10(sc, CPCE_CTRL_92_50, HDMI_PHY_I2C_CPCE_CTRL);
		FUNC10(sc, GMPCTRL_92_50, HDMI_PHY_I2C_GMPCTRL);
	} else if (sc->sc_mode.dot_clock*1000 <= 185000000) {
		FUNC10(sc, CPCE_CTRL_185, HDMI_PHY_I2C_CPCE_CTRL);
		FUNC10(sc, GMPCTRL_185, HDMI_PHY_I2C_GMPCTRL);
	} else {
		FUNC10(sc, CPCE_CTRL_370, HDMI_PHY_I2C_CPCE_CTRL);
		FUNC10(sc, GMPCTRL_370, HDMI_PHY_I2C_GMPCTRL);
	}

	/*
	 * Values described in TRM section 34.9.2 PLL/MPLL Generic
	 *    Configuration Settings. Table 34-23.
	 */
	if (sc->sc_mode.dot_clock*1000 <= 54000000) {
		FUNC10(sc, 0x091c, HDMI_PHY_I2C_CURRCTRL);
	} else if (sc->sc_mode.dot_clock*1000 <= 58400000) {
		FUNC10(sc, 0x091c, HDMI_PHY_I2C_CURRCTRL);
	} else if (sc->sc_mode.dot_clock*1000 <= 72000000) {
		FUNC10(sc, 0x06dc, HDMI_PHY_I2C_CURRCTRL);
	} else if (sc->sc_mode.dot_clock*1000 <= 74250000) {
		FUNC10(sc, 0x06dc, HDMI_PHY_I2C_CURRCTRL);
	} else if (sc->sc_mode.dot_clock*1000 <= 118800000) {
		FUNC10(sc, 0x091c, HDMI_PHY_I2C_CURRCTRL);
	} else if (sc->sc_mode.dot_clock*1000 <= 216000000) {
		FUNC10(sc, 0x06dc, HDMI_PHY_I2C_CURRCTRL);
	} else {
		FUNC12("Unsupported mode\n");
	}

	FUNC10(sc, 0x0000, HDMI_PHY_I2C_PLLPHBYCTRL);
	FUNC10(sc, MSM_CTRL_FB_CLK, HDMI_PHY_I2C_MSM_CTRL);
	/* RESISTANCE TERM 133 Ohm */
	FUNC10(sc, TXTERM_133, HDMI_PHY_I2C_TXTERM);

	/* REMOVE CLK TERM */
	FUNC10(sc, CKCALCTRL_OVERRIDE, HDMI_PHY_I2C_CKCALCTRL);

	if (sc->sc_mode.dot_clock*1000 > 148500000) {
		FUNC10(sc,CKSYMTXCTRL_OVERRIDE | CKSYMTXCTRL_TX_SYMON |
		    CKSYMTXCTRL_TX_TRBON | CKSYMTXCTRL_TX_CK_SYMON, HDMI_PHY_I2C_CKSYMTXCTRL); 
		FUNC10(sc, FUNC3(9) | FUNC2(9),
		    HDMI_PHY_I2C_VLEVCTRL);
	} else {
		FUNC10(sc,CKSYMTXCTRL_OVERRIDE | CKSYMTXCTRL_TX_SYMON |
		    CKSYMTXCTRL_TX_TRAON | CKSYMTXCTRL_TX_CK_SYMON, HDMI_PHY_I2C_CKSYMTXCTRL); 
		FUNC10(sc, FUNC3(13) | FUNC2(13),
		    HDMI_PHY_I2C_VLEVCTRL);
	}

	FUNC6(sc, 1);

	/* toggle TMDS enable */
	FUNC7(sc, 0);
	FUNC7(sc, 1);

	/* gen2 tx power on */
	FUNC9(sc, 1);
	FUNC8(sc, 0);

	/*Wait for PHY PLL lock */
	msec = 4;
	val = FUNC1(sc, HDMI_PHY_STAT0) & HDMI_PHY_TX_PHY_LOCK;
	while (val == 0) {
		FUNC0(1000);
		if (msec-- == 0) {
			FUNC5(sc->sc_dev, "PHY PLL not locked\n");
			return (-1);
		}
		val = FUNC1(sc, HDMI_PHY_STAT0) & HDMI_PHY_TX_PHY_LOCK;
	}

	return true;
}