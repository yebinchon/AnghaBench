#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ aspm_en; } ;
struct TYPE_3__ {scalar_t__ inv; } ;
struct bhnd_pcihb_softc {int quirks; int /*<<< orphan*/  dev; TYPE_2__ aspm_quirk_override; int /*<<< orphan*/  pci_dev; TYPE_1__ sdr9_quirk_polarity; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  scalar_t__ bus_size_t ;
typedef  int /*<<< orphan*/  bhnd_pci_war_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_DEVCLASS_CC ; 
 int BHND_PCIE_APPLE_TX_IDRIVER_700MV ; 
 int BHND_PCIE_APPLE_TX_IDRIVER_MAX ; 
 int BHND_PCIE_APPLE_TX_P2_COEFF_700MV ; 
 int BHND_PCIE_APPLE_TX_P2_COEFF_MAX ; 
 int BHND_PCIE_ASPMTIMER_EXTEND ; 
 int /*<<< orphan*/  BHND_PCIE_DLLP_LCREG ; 
 int BHND_PCIE_DLLP_LCREG_PCIPM_EN ; 
 int /*<<< orphan*/  BHND_PCIE_DLLP_PMTHRESHREG ; 
 int BHND_PCIE_L1THRESHOLD_WARVAL ; 
 int /*<<< orphan*/  BHND_PCIE_PHYADDR_SD ; 
 int /*<<< orphan*/  BHND_PCIE_PHY_SDR9_PLL ; 
 int /*<<< orphan*/  BHND_PCIE_PHY_SDR9_TXRX ; 
 int BHND_PCIE_QUIRK_ASPM_OVR ; 
 int BHND_PCIE_QUIRK_L1_IDLE_THRESH ; 
 int BHND_PCIE_QUIRK_L1_TIMER_PERF ; 
 int BHND_PCIE_QUIRK_PCIPM_REQEN ; 
 int BHND_PCIE_QUIRK_SDR9_L0s_HANG ; 
 int BHND_PCIE_QUIRK_SDR9_NO_FREQRETRY ; 
 int BHND_PCIE_QUIRK_SDR9_POLARITY ; 
 int BHND_PCIE_QUIRK_SERDES_NOPLLDOWN ; 
 int BHND_PCIE_QUIRK_SERDES_TXDRV_700MV ; 
 int BHND_PCIE_QUIRK_SERDES_TXDRV_ADJUST ; 
 int BHND_PCIE_QUIRK_SERDES_TXDRV_MAX ; 
 int BHND_PCIE_QUIRK_SPROM_L23_PCI_RESET ; 
 int BHND_PCIE_QUIRK_UR_STATUS_FIX ; 
 int /*<<< orphan*/  BHND_PCIE_SDR9_PLL_CTRL ; 
 int BHND_PCIE_SDR9_PLL_CTRL_FREQDET_EN ; 
 int /*<<< orphan*/  BHND_PCIE_SDR9_RX_CDR ; 
 int /*<<< orphan*/  BHND_PCIE_SDR9_RX_CDRBW ; 
 int BHND_PCIE_SDR9_RX_CDR_FREQ_OVR_EN ; 
 int /*<<< orphan*/  BHND_PCIE_SDR9_RX_CTRL ; 
 int BHND_PCIE_SDR9_RX_CTRL_FORCE ; 
 int BHND_PCIE_SDR9_RX_CTRL_POLARITY_INV ; 
 int /*<<< orphan*/  BHND_PCIE_SDR9_RX_TIMER1 ; 
 int /*<<< orphan*/  BHND_PCIE_SD_REGS_TX0 ; 
 int /*<<< orphan*/  BHND_PCIE_SD_TX_DRIVER ; 
 scalar_t__ BHND_PCIE_SPROM_SHADOW ; 
 int BHND_PCIE_SRSH_ASPM_ENB ; 
 scalar_t__ BHND_PCIE_SRSH_ASPM_OFFSET ; 
 scalar_t__ BHND_PCIE_SRSH_BD_OFFSET ; 
 int BHND_PCIE_SRSH_CLKREQ_ENB ; 
 scalar_t__ BHND_PCIE_SRSH_CLKREQ_OFFSET_R5 ; 
 int BHND_PCIE_SRSH_L23READY_EXIT_NOPRST ; 
 scalar_t__ BHND_PCIE_SRSH_PCIE_MISC_CONFIG ; 
 int /*<<< orphan*/  BHND_PCIE_TLP_WORKAROUNDSREG ; 
 int BHND_PCIE_TLP_WORKAROUND_URBIT ; 
 int /*<<< orphan*/  BHND_PCI_CLKRUN_CTL ; 
 int BHND_PCI_CLKRUN_DSBL ; 
 int FUNC1 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ,int) ; 
 int BHND_PCI_QUIRK_CLKRUN_DSBL ; 
 int BHND_PCI_QUIRK_SBTOPCI2_PREF_BURST ; 
 int BHND_PCI_QUIRK_SBTOPCI2_READMULTI ; 
 int FUNC7 (struct bhnd_pcihb_softc*,scalar_t__) ; 
 int FUNC8 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PCI_SBTOPCI2 ; 
 int BHND_PCI_SBTOPCI_BURST ; 
 int BHND_PCI_SBTOPCI_PREF ; 
 int BHND_PCI_SBTOPCI_RC_READMULTI ; 
 int /*<<< orphan*/  FUNC9 (struct bhnd_pcihb_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CHIPCTRL_4321_PLL_DOWN ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int PCIEM_LINK_CTL_ASPMC ; 
 int PCIEM_LINK_CTL_ECPM ; 
 int /*<<< orphan*/  PCIER_LINK_CTL ; 
 int /*<<< orphan*/  PCIE_L1THRESHOLDTIME ; 
 int /*<<< orphan*/  PCIE_SDR9_RX_CDRBW_INTGACQ ; 
 int /*<<< orphan*/  PCIE_SDR9_RX_CDRBW_INTGTRK ; 
 int /*<<< orphan*/  PCIE_SDR9_RX_CDRBW_PROPACQ ; 
 int /*<<< orphan*/  PCIE_SDR9_RX_CDRBW_PROPTRK ; 
 int /*<<< orphan*/  PCIE_SDR9_RX_CDR_FREQ_OVR ; 
 int /*<<< orphan*/  PCIE_SDR9_RX_TIMER1_LKACQ ; 
 int /*<<< orphan*/  PCIE_SDR9_RX_TIMER1_LKTRK ; 
 int /*<<< orphan*/  PCIE_SD_TX_DRIVER_IDRIVER ; 
 int /*<<< orphan*/  PCIE_SD_TX_DRIVER_P2_COEFF ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC17(struct bhnd_pcihb_softc *sc, bhnd_pci_war_state state)
{
	/* Note that the order here matters; these work-arounds
	 * should not be re-ordered without careful review of their
	 * interdependencies */

	/* Enable PCI prefetch/burst/readmulti flags */
	if (sc->quirks & BHND_PCI_QUIRK_SBTOPCI2_PREF_BURST ||
	    sc->quirks & BHND_PCI_QUIRK_SBTOPCI2_READMULTI)
	{
		uint32_t sbp2;
		sbp2 = FUNC8(sc, BHND_PCI_SBTOPCI2);

		if (sc->quirks & BHND_PCI_QUIRK_SBTOPCI2_PREF_BURST)
			sbp2 |= (BHND_PCI_SBTOPCI_PREF|BHND_PCI_SBTOPCI_BURST);

		if (sc->quirks & BHND_PCI_QUIRK_SBTOPCI2_READMULTI)
			sbp2 |= BHND_PCI_SBTOPCI_RC_READMULTI;

		FUNC10(sc, BHND_PCI_SBTOPCI2, sbp2);
	}

	/* Disable PCI CLKRUN# */
	if (sc->quirks & BHND_PCI_QUIRK_CLKRUN_DSBL) {
		uint32_t ctl;
	
		ctl = FUNC8(sc, BHND_PCI_CLKRUN_CTL);
		ctl |= BHND_PCI_CLKRUN_DSBL;
		FUNC10(sc, BHND_PCI_CLKRUN_CTL, ctl);
	}
	
	/* Enable TLP unmatched address handling work-around */
	if (sc->quirks & BHND_PCIE_QUIRK_UR_STATUS_FIX) {
		uint32_t wrs;
		wrs = FUNC5(sc, BHND_PCIE_TLP_WORKAROUNDSREG);
		wrs |= BHND_PCIE_TLP_WORKAROUND_URBIT;
		FUNC6(sc, BHND_PCIE_TLP_WORKAROUNDSREG, wrs);
	}

	/* Adjust SerDes CDR tuning to ensure that CDR is stable before sending
	 * data during L0s to L0 exit transitions. */
	if (sc->quirks & BHND_PCIE_QUIRK_SDR9_L0s_HANG) {
		uint16_t sdv;

		/* Set RX track/acquire timers to 2.064us/40.96us */
		sdv = FUNC11(0, PCIE_SDR9_RX_TIMER1_LKTRK, (2064/16));
		sdv = FUNC11(sdv, PCIE_SDR9_RX_TIMER1_LKACQ,
		    (40960/1024));
		FUNC3(sc, BHND_PCIE_PHY_SDR9_TXRX,
		    BHND_PCIE_SDR9_RX_TIMER1, sdv);

		/* Apply CDR frequency workaround */
		sdv = BHND_PCIE_SDR9_RX_CDR_FREQ_OVR_EN;
		sdv = FUNC11(sdv, PCIE_SDR9_RX_CDR_FREQ_OVR, 0x0);
		FUNC3(sc, BHND_PCIE_PHY_SDR9_TXRX,
		    BHND_PCIE_SDR9_RX_CDR, sdv);

		/* Apply CDR BW tunings */
		sdv = 0;
		sdv = FUNC11(sdv, PCIE_SDR9_RX_CDRBW_INTGTRK, 0x2);
		sdv = FUNC11(sdv, PCIE_SDR9_RX_CDRBW_INTGACQ, 0x4);
		sdv = FUNC11(sdv, PCIE_SDR9_RX_CDRBW_PROPTRK, 0x6);
		sdv = FUNC11(sdv, PCIE_SDR9_RX_CDRBW_PROPACQ, 0x6);
		FUNC3(sc, BHND_PCIE_PHY_SDR9_TXRX,
		    BHND_PCIE_SDR9_RX_CDRBW, sdv);
	}

	/* Force correct SerDes polarity */
	if (sc->quirks & BHND_PCIE_QUIRK_SDR9_POLARITY) {
		uint16_t	rxctl;

		rxctl = FUNC1(sc, BHND_PCIE_PHY_SDR9_TXRX,
		    BHND_PCIE_SDR9_RX_CTRL);

		rxctl |= BHND_PCIE_SDR9_RX_CTRL_FORCE;
		if (sc->sdr9_quirk_polarity.inv)
			rxctl |= BHND_PCIE_SDR9_RX_CTRL_POLARITY_INV;
		else
			rxctl &= ~BHND_PCIE_SDR9_RX_CTRL_POLARITY_INV;

		FUNC3(sc, BHND_PCIE_PHY_SDR9_TXRX,
		    BHND_PCIE_SDR9_RX_CTRL, rxctl);
	}

	/* Disable startup retry on PLL frequency detection failure */
	if (sc->quirks & BHND_PCIE_QUIRK_SDR9_NO_FREQRETRY) {
		uint16_t	pctl;

		pctl = FUNC1(sc, BHND_PCIE_PHY_SDR9_PLL,
		    BHND_PCIE_SDR9_PLL_CTRL);

		pctl &= ~BHND_PCIE_SDR9_PLL_CTRL_FREQDET_EN;
		FUNC3(sc, BHND_PCIE_PHY_SDR9_PLL,
		    BHND_PCIE_SDR9_PLL_CTRL, pctl);
	}
	
	/* Explicitly enable PCI-PM */
	if (sc->quirks & BHND_PCIE_QUIRK_PCIPM_REQEN) {
		uint32_t lcreg;
		lcreg = FUNC5(sc, BHND_PCIE_DLLP_LCREG);
		lcreg |= BHND_PCIE_DLLP_LCREG_PCIPM_EN;
		FUNC6(sc, BHND_PCIE_DLLP_LCREG, lcreg);
	}

	/* Adjust L1 timer to fix slow L1->L0 transitions */
	if (sc->quirks & BHND_PCIE_QUIRK_L1_IDLE_THRESH) {
		uint32_t pmt;
		pmt = FUNC5(sc, BHND_PCIE_DLLP_PMTHRESHREG);
		pmt = FUNC11(pmt, PCIE_L1THRESHOLDTIME,
		    BHND_PCIE_L1THRESHOLD_WARVAL);
		FUNC6(sc, BHND_PCIE_DLLP_PMTHRESHREG, pmt);
	}

	/* Extend L1 timer for better performance.
	 * TODO: We could enable/disable this on demand for better power
	 * savings if we tie this to HT clock request handling */
	if (sc->quirks & BHND_PCIE_QUIRK_L1_TIMER_PERF) {
		uint32_t pmt;
		pmt = FUNC5(sc, BHND_PCIE_DLLP_PMTHRESHREG);
		pmt |= BHND_PCIE_ASPMTIMER_EXTEND;
		FUNC6(sc, BHND_PCIE_DLLP_PMTHRESHREG, pmt);
	}

	/* Override ASPM/ECPM settings in SPROM shadow and PCIER_LINK_CTL */
	if (sc->quirks & BHND_PCIE_QUIRK_ASPM_OVR) {
		bus_size_t	reg;
		uint16_t	cfg;

		/* Set ASPM L1/L0s flags in SPROM shadow */
		reg = BHND_PCIE_SPROM_SHADOW + BHND_PCIE_SRSH_ASPM_OFFSET;
		cfg = FUNC7(sc, reg);

		if (sc->aspm_quirk_override.aspm_en)
			cfg |= BHND_PCIE_SRSH_ASPM_ENB;
		else
			cfg &= ~BHND_PCIE_SRSH_ASPM_ENB;
		
		FUNC9(sc, reg, cfg);


		/* Set ASPM/ECPM (CLKREQ) flags in PCIe link control register */
		cfg = FUNC15(sc->pci_dev, PCIER_LINK_CTL, 2);

		if (sc->aspm_quirk_override.aspm_en)
			cfg |= PCIEM_LINK_CTL_ASPMC;
		else
			cfg &= ~PCIEM_LINK_CTL_ASPMC;

		cfg &= ~PCIEM_LINK_CTL_ECPM;		/* CLKREQ# */

		FUNC16(sc->pci_dev, PCIER_LINK_CTL, cfg, 2); 

		/* Set CLKREQ (ECPM) flags in SPROM shadow */
		reg = BHND_PCIE_SPROM_SHADOW + BHND_PCIE_SRSH_CLKREQ_OFFSET_R5;
		cfg = FUNC7(sc, reg);
		
		if (sc->aspm_quirk_override.aspm_en)
			cfg |= BHND_PCIE_SRSH_CLKREQ_ENB;
		else
			cfg &= ~BHND_PCIE_SRSH_CLKREQ_ENB;

		FUNC9(sc, reg, cfg);
	}

	/* Enable L23READY_EXIT_NOPRST if not already set in SPROM. */
	if (sc->quirks & BHND_PCIE_QUIRK_SPROM_L23_PCI_RESET) {
		bus_size_t	reg;
		uint16_t	cfg;

		/* Fetch the misc cfg flags from SPROM */
		reg = BHND_PCIE_SPROM_SHADOW + BHND_PCIE_SRSH_PCIE_MISC_CONFIG;
		cfg = FUNC7(sc, reg);

		/* Write EXIT_NOPRST flag if not already set in SPROM */
		if (!(cfg & BHND_PCIE_SRSH_L23READY_EXIT_NOPRST)) {
			cfg |= BHND_PCIE_SRSH_L23READY_EXIT_NOPRST;
			FUNC9(sc, reg, cfg);
		}
	}

	/* Disable SerDes PLL down */
	if (sc->quirks & BHND_PCIE_QUIRK_SERDES_NOPLLDOWN) {
		device_t	bhnd, chipc;
		bus_size_t	reg;
		
		bhnd = FUNC14(sc->dev);
		chipc = FUNC13(bhnd, BHND_DEVCLASS_CC, 0);
		FUNC12(chipc != NULL, ("missing chipcommon device"));

		/* Write SerDes PLL disable flag to the ChipCommon core */
		FUNC0(chipc, CHIPCTRL_4321_PLL_DOWN,
		    CHIPCTRL_4321_PLL_DOWN);

		/* Clear SPROM shadow backdoor register */
		reg = BHND_PCIE_SPROM_SHADOW + BHND_PCIE_SRSH_BD_OFFSET;
		FUNC9(sc, reg, 0);
	}

	/* Adjust TX drive strength and pre-emphasis coefficient */
	if (sc->quirks & BHND_PCIE_QUIRK_SERDES_TXDRV_ADJUST) {
		uint16_t txdrv;

		/* Fetch current TX driver parameters */
		txdrv = FUNC2(sc, BHND_PCIE_PHYADDR_SD,
		    BHND_PCIE_SD_REGS_TX0, BHND_PCIE_SD_TX_DRIVER);

		/* Set 700mV drive strength */
		if (sc->quirks & BHND_PCIE_QUIRK_SERDES_TXDRV_700MV) {
			txdrv = FUNC11(txdrv, PCIE_SD_TX_DRIVER_P2_COEFF,
			    BHND_PCIE_APPLE_TX_P2_COEFF_700MV);

			txdrv = FUNC11(txdrv, PCIE_SD_TX_DRIVER_IDRIVER,
			    BHND_PCIE_APPLE_TX_IDRIVER_700MV);
		}

		/* ... or, set max drive strength */
		if (sc->quirks & BHND_PCIE_QUIRK_SERDES_TXDRV_MAX) {
			txdrv = FUNC11(txdrv, PCIE_SD_TX_DRIVER_P2_COEFF,
			    BHND_PCIE_APPLE_TX_P2_COEFF_MAX);
			
			txdrv = FUNC11(txdrv, PCIE_SD_TX_DRIVER_IDRIVER,
			    BHND_PCIE_APPLE_TX_IDRIVER_MAX);
		}

		FUNC4(sc, BHND_PCIE_PHYADDR_SD,
		    BHND_PCIE_SD_REGS_TX0, BHND_PCIE_SD_TX_DRIVER, txdrv);
	}

	return (0);
}