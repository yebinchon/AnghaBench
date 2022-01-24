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
typedef  int /*<<< orphan*/  uint32_t ;
struct iwm_vap {scalar_t__ is_uploaded; int /*<<< orphan*/ * phy_ctxt; } ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct iwm_softc {TYPE_1__* cfg; int /*<<< orphan*/ * txq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_flags; scalar_t__ sc_firmware_state; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IWM_APMG_CLK_DIS_REG ; 
 int /*<<< orphan*/  IWM_APMG_CLK_VAL_DMA_CLK_RQT ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWM_CSR_GP_CNTRL ; 
 int /*<<< orphan*/  IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ; 
 int /*<<< orphan*/  IWM_CSR_RESET ; 
 int /*<<< orphan*/  IWM_CSR_RESET_REG_FLAG_SW_RESET ; 
 scalar_t__ IWM_DEVICE_FAMILY_7000 ; 
 int IWM_FH_TCSR_CHNL_NUM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IWM_FH_TSSR_TX_STATUS_REG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  IWM_FLAG_TE_ACTIVE ; 
 int /*<<< orphan*/  IWM_FLAG_USE_ICT ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWM_SCD_TXFACT ; 
 int /*<<< orphan*/  FUNC5 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwm_vap* FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211vap* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwm_softc*) ; 
 scalar_t__ FUNC14 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct iwm_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct iwm_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC23(struct iwm_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC8(&ic->ic_vaps);
	int chnl, qid;
	uint32_t mask = 0;

	/* tell the device to stop sending interrupts */
	FUNC12(sc);

	/*
	 * FreeBSD-local: mark the first vap as not-uploaded,
	 * so the next transition through auth/assoc
	 * will correctly populate the MAC context.
	 */
	if (vap) {
		struct iwm_vap *iv = FUNC6(vap);
		iv->phy_ctxt = NULL;
		iv->is_uploaded = 0;
	}
	sc->sc_firmware_state = 0;
	sc->sc_flags &= ~IWM_FLAG_TE_ACTIVE;

	/* device going down, Stop using ICT table */
	sc->sc_flags &= ~IWM_FLAG_USE_ICT;

	/* stop tx and rx.  tx and rx bits, as usual, are from if_iwn */

	if (FUNC14(sc)) {
		FUNC21(sc, IWM_SCD_TXFACT, 0);

		/* Stop each Tx DMA channel */
		for (chnl = 0; chnl < IWM_FH_TCSR_CHNL_NUM; chnl++) {
			FUNC7(sc,
			    FUNC2(chnl), 0);
			mask |= FUNC3(chnl);
		}

		/* Wait for DMA channels to be idle */
		if (!FUNC17(sc, IWM_FH_TSSR_TX_STATUS_REG, mask, mask,
		    5000)) {
			FUNC9(sc->sc_dev,
			    "Failing on timeout while stopping DMA channel: [0x%08x]\n",
			    FUNC4(sc, IWM_FH_TSSR_TX_STATUS_REG));
		}
		FUNC15(sc);
	}
	FUNC16(sc);

	/* Stop RX ring. */
	FUNC19(sc, &sc->rxq);

	/* Reset all TX rings. */
	for (qid = 0; qid < FUNC22(sc->txq); qid++)
		FUNC20(sc, &sc->txq[qid]);

	if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000) {
		/* Power-down device's busmaster DMA clocks */
		if (FUNC14(sc)) {
			FUNC21(sc, IWM_APMG_CLK_DIS_REG,
			    IWM_APMG_CLK_VAL_DMA_CLK_RQT);
			FUNC15(sc);
		}
		FUNC0(5);
	}

	/* Make sure (redundant) we've released our request to stay awake */
	FUNC1(sc, IWM_CSR_GP_CNTRL,
	    IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);

	/* Stop the device, and put it in low power state */
	FUNC10(sc);

	/* stop and reset the on-board processor */
	FUNC5(sc, IWM_CSR_RESET, IWM_CSR_RESET_REG_FLAG_SW_RESET);
	FUNC0(5000);

	/*
	 * Upon stop, the APM issues an interrupt if HW RF kill is set.
	 */
	FUNC12(sc);

	/*
	 * Even if we stop the HW, we still want the RF kill
	 * interrupt
	 */
	FUNC13(sc);
	FUNC11(sc);

	FUNC18(sc);
}