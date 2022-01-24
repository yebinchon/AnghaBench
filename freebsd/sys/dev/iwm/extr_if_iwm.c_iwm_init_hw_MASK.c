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
struct ieee80211com {int /*<<< orphan*/ * ic_channels; } ;
struct iwm_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* cfg; int /*<<< orphan*/ * sc_phyctxt; int /*<<< orphan*/  sc_phy_db; int /*<<< orphan*/  sc_ps_disabled; int /*<<< orphan*/  sf_state; struct ieee80211com sc_ic; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IWM_DEVICE_FAMILY_7000 ; 
 int IWM_NUM_PHY_CTX ; 
 int /*<<< orphan*/  IWM_SF_UNINIT ; 
 int /*<<< orphan*/  IWM_STATION_ID ; 
 int /*<<< orphan*/  IWM_UCODE_REGULAR ; 
 int /*<<< orphan*/  IWM_UCODE_TLV_CAPA_UMAC_SCAN ; 
 int WME_NUM_AC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * iwm_mvm_ac_to_tx_fifo ; 
 int FUNC3 (struct iwm_softc*) ; 
 scalar_t__ FUNC4 (struct iwm_softc*) ; 
 int FUNC5 (struct iwm_softc*) ; 
 int FUNC6 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwm_softc*) ; 
 int FUNC8 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iwm_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC10 (struct iwm_softc*) ; 
 int FUNC11 (struct iwm_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct iwm_softc*) ; 
 int FUNC15 (struct iwm_softc*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct iwm_softc*,char*) ; 
 int FUNC19 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 

__attribute__((used)) static int
FUNC22(struct iwm_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	int error, i, ac;

	sc->sf_state = IWM_SF_UNINIT;

	if ((error = FUNC19(sc)) != 0) {
		FUNC21("iwm_start_hw: failed %d\n", error);
		return error;
	}

	if ((error = FUNC13(sc, 0)) != 0) {
		FUNC21("iwm_run_init_mvm_ucode: failed %d\n", error);
		return error;
	}

	/*
	 * should stop and start HW since that INIT
	 * image just loaded
	 */
	FUNC20(sc);
	sc->sc_ps_disabled = FALSE;
	if ((error = FUNC19(sc)) != 0) {
		FUNC0(sc->sc_dev, "could not initialize hardware\n");
		return error;
	}

	/* omstart, this time with the regular firmware */
	error = FUNC8(sc, IWM_UCODE_REGULAR);
	if (error) {
		FUNC0(sc->sc_dev, "could not load firmware\n");
		goto error;
	}

	error = FUNC11(sc, NULL, FALSE);
	if (error)
		FUNC0(sc->sc_dev, "Failed to initialize Smart Fifo\n");

	if ((error = FUNC14(sc)) != 0) {
		FUNC0(sc->sc_dev, "bt init conf failed\n");
		goto error;
	}

	error = FUNC17(sc, FUNC7(sc));
	if (error != 0) {
		FUNC0(sc->sc_dev, "antenna config failed\n");
		goto error;
	}

	/* Send phy db control command and then phy db calibration */
	if ((error = FUNC16(sc->sc_phy_db)) != 0)
		goto error;

	if ((error = FUNC15(sc)) != 0) {
		FUNC0(sc->sc_dev, "phy_cfg_cmd failed\n");
		goto error;
	}

	/* Add auxiliary station for scanning */
	if ((error = FUNC3(sc)) != 0) {
		FUNC0(sc->sc_dev, "add_aux_sta failed\n");
		goto error;
	}

	for (i = 0; i < IWM_NUM_PHY_CTX; i++) {
		/*
		 * The channel used here isn't relevant as it's
		 * going to be overwritten in the other flows.
		 * For now use the first channel we have.
		 */
		if ((error = FUNC9(sc,
		    &sc->sc_phyctxt[i], &ic->ic_channels[1], 1, 1)) != 0)
			goto error;
	}

	/* Initialize tx backoffs to the minimum. */
	if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000)
		FUNC12(sc, 0);

	if (FUNC4(sc) != 0)
		FUNC0(sc->sc_dev, "PCIe LTR configuration failed\n");

	error = FUNC10(sc);
	if (error)
		goto error;

	if ((error = FUNC18(sc, "ZZ")) != 0)
		goto error;

	if (FUNC2(sc, IWM_UCODE_TLV_CAPA_UMAC_SCAN)) {
		if ((error = FUNC5(sc)) != 0)
			goto error;
	}

	/* Enable Tx queues. */
	for (ac = 0; ac < WME_NUM_AC; ac++) {
		error = FUNC1(sc, IWM_STATION_ID, ac,
		    iwm_mvm_ac_to_tx_fifo[ac]);
		if (error)
			goto error;
	}

	if ((error = FUNC6(sc)) != 0) {
		FUNC0(sc->sc_dev, "failed to disable beacon filter\n");
		goto error;
	}

	return 0;

 error:
	FUNC20(sc);
	return error;
}