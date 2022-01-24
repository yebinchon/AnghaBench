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
typedef  int uint32_t ;
struct alc_softc {int alc_flags; int alc_rev; scalar_t__ alc_rcb; int /*<<< orphan*/  alc_dev; scalar_t__ alc_expcap; TYPE_1__* alc_ident; } ;
struct TYPE_2__ {scalar_t__ deviceid; } ;

/* Variables and functions */
 int ALC_FLAG_AR816X_FAMILY ; 
 int ALC_FLAG_L0S ; 
 int ALC_FLAG_L1S ; 
 int /*<<< orphan*/  ALC_LTSSM_ID_CFG ; 
 int /*<<< orphan*/  ALC_MASTER_CFG ; 
 int /*<<< orphan*/  ALC_PCIE_PHYMISC ; 
 int /*<<< orphan*/  ALC_PCIE_PHYMISC2 ; 
 int /*<<< orphan*/  ALC_PDLL_TRNS1 ; 
 int /*<<< orphan*/  ALC_PEX_UNC_ERR_SEV ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ AR816X_REV_A1 ; 
 int ATHEROS_AR8152_B_V10 ; 
 int FUNC1 (struct alc_softc*,scalar_t__) ; 
 int FUNC2 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ DEVICEID_ATHEROS_AR8152_B ; 
 scalar_t__ DMA_CFG_RCB_128 ; 
 scalar_t__ DMA_CFG_RCB_64 ; 
 int /*<<< orphan*/  IFM_UNKNOWN ; 
 int LTSSM_ID_WRO_ENB ; 
 int MASTER_CLK_SEL_DIS ; 
 int MASTER_WAKEN_25M ; 
 int PCIEM_LINK_CAP_ASPM ; 
 int PCIEM_LINK_CTL_ASPMC ; 
 int PCIEM_LINK_CTL_ASPMC_L0S ; 
 int PCIEM_LINK_CTL_ASPMC_L1 ; 
 int PCIEM_LINK_CTL_RCB ; 
 scalar_t__ PCIER_LINK_CAP ; 
 scalar_t__ PCIER_LINK_CTL ; 
 int PCIE_PHYMISC2_SERDES_CDR_MASK ; 
 int PCIE_PHYMISC2_SERDES_CDR_SHIFT ; 
 int PCIE_PHYMISC2_SERDES_TH_MASK ; 
 int PCIE_PHYMISC2_SERDES_TH_SHIFT ; 
 int PCIE_PHYMISC_FORCE_RCV_DET ; 
 int PDLL_TRNS1_D3PLLOFF_ENB ; 
 int PEX_UNC_ERR_SEV_DLP ; 
 int PEX_UNC_ERR_SEV_FCP ; 
 int /*<<< orphan*/  FUNC4 (struct alc_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct alc_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC7(struct alc_softc *sc)
{
	const char *aspm_state[] = { "L0s/L1", "L0s", "L1", "L0s/L1" };
	uint32_t cap, ctl, val;
	int state;

	/* Clear data link and flow-control protocol error. */
	val = FUNC2(sc, ALC_PEX_UNC_ERR_SEV);
	val &= ~(PEX_UNC_ERR_SEV_DLP | PEX_UNC_ERR_SEV_FCP);
	FUNC3(sc, ALC_PEX_UNC_ERR_SEV, val);

	if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) == 0) {
		FUNC3(sc, ALC_LTSSM_ID_CFG,
		    FUNC2(sc, ALC_LTSSM_ID_CFG) & ~LTSSM_ID_WRO_ENB);
		FUNC3(sc, ALC_PCIE_PHYMISC,
		    FUNC2(sc, ALC_PCIE_PHYMISC) |
		    PCIE_PHYMISC_FORCE_RCV_DET);
		if (sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B &&
		    sc->alc_rev == ATHEROS_AR8152_B_V10) {
			val = FUNC2(sc, ALC_PCIE_PHYMISC2);
			val &= ~(PCIE_PHYMISC2_SERDES_CDR_MASK |
			    PCIE_PHYMISC2_SERDES_TH_MASK);
			val |= 3 << PCIE_PHYMISC2_SERDES_CDR_SHIFT;
			val |= 3 << PCIE_PHYMISC2_SERDES_TH_SHIFT;
			FUNC3(sc, ALC_PCIE_PHYMISC2, val);
		}
		/* Disable ASPM L0S and L1. */
		cap = FUNC1(sc, sc->alc_expcap + PCIER_LINK_CAP);
		if ((cap & PCIEM_LINK_CAP_ASPM) != 0) {
			ctl = FUNC1(sc, sc->alc_expcap + PCIER_LINK_CTL);
			if ((ctl & PCIEM_LINK_CTL_RCB) != 0)
				sc->alc_rcb = DMA_CFG_RCB_128;
			if (bootverbose)
				FUNC6(sc->alc_dev, "RCB %u bytes\n",
				    sc->alc_rcb == DMA_CFG_RCB_64 ? 64 : 128);
			state = ctl & PCIEM_LINK_CTL_ASPMC;
			if (state & PCIEM_LINK_CTL_ASPMC_L0S)
				sc->alc_flags |= ALC_FLAG_L0S;
			if (state & PCIEM_LINK_CTL_ASPMC_L1)
				sc->alc_flags |= ALC_FLAG_L1S;
			if (bootverbose)
				FUNC6(sc->alc_dev, "ASPM %s %s\n",
				    aspm_state[state],
				    state == 0 ? "disabled" : "enabled");
			FUNC5(sc);
		} else {
			if (bootverbose)
				FUNC6(sc->alc_dev,
				    "no ASPM support\n");
		}
	} else {
		val = FUNC2(sc, ALC_PDLL_TRNS1);
		val &= ~PDLL_TRNS1_D3PLLOFF_ENB;
		FUNC3(sc, ALC_PDLL_TRNS1, val);
		val = FUNC2(sc, ALC_MASTER_CFG);
		if (FUNC0(sc->alc_rev) <= AR816X_REV_A1 &&
		    (sc->alc_rev & 0x01) != 0) {
			if ((val & MASTER_WAKEN_25M) == 0 ||
			    (val & MASTER_CLK_SEL_DIS) == 0) {
				val |= MASTER_WAKEN_25M | MASTER_CLK_SEL_DIS;
				FUNC3(sc, ALC_MASTER_CFG, val);
			}
		} else {
			if ((val & MASTER_WAKEN_25M) == 0 ||
			    (val & MASTER_CLK_SEL_DIS) != 0) {
				val |= MASTER_WAKEN_25M;
				val &= ~MASTER_CLK_SEL_DIS;
				FUNC3(sc, ALC_MASTER_CFG, val);
			}
		}
	}
	FUNC4(sc, 1, IFM_UNKNOWN);
}