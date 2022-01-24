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
struct iwm_fw_info {int /*<<< orphan*/ * fw_fp; } ;
struct iwm_softc {int /*<<< orphan*/ * sc_notif_wait; int /*<<< orphan*/  fw_dma; int /*<<< orphan*/  kw_dma; int /*<<< orphan*/  ict_dma; int /*<<< orphan*/  sched_dma; int /*<<< orphan*/ * txq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  nvm_data; int /*<<< orphan*/ * sc_phy_db; int /*<<< orphan*/  sc_watchdog_to; int /*<<< orphan*/  sc_led_blink_to; int /*<<< orphan*/  sc_ic; int /*<<< orphan*/  sc_es_task; scalar_t__ sc_attached; int /*<<< orphan*/  sc_dev; struct iwm_fw_info sc_fw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwm_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iwm_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct iwm_fw_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct iwm_softc*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(struct iwm_softc *sc, int do_net80211)
{
	struct iwm_fw_info *fw = &sc->sc_fw;
	device_t dev = sc->sc_dev;
	int i;

	if (!sc->sc_attached)
		return 0;
	sc->sc_attached = 0;
	if (do_net80211) {
		FUNC4(&sc->sc_ic, &sc->sc_es_task);
	}
	FUNC15(sc);
	if (do_net80211) {
		FUNC0(sc);
		FUNC16(sc);
		FUNC2(sc);
		FUNC5(&sc->sc_ic);
	}
	FUNC3(&sc->sc_led_blink_to);
	FUNC3(&sc->sc_watchdog_to);

	FUNC14(sc->sc_phy_db);
	sc->sc_phy_db = NULL;

	FUNC8(sc->nvm_data);

	/* Free descriptor rings */
	FUNC9(sc, &sc->rxq);
	for (i = 0; i < FUNC17(sc->txq); i++)
		FUNC10(sc, &sc->txq[i]);

	/* Free firmware */
	if (fw->fw_fp != NULL)
		FUNC11(fw);

	/* Free scheduler */
	FUNC6(&sc->sched_dma);
	FUNC6(&sc->ict_dma);
	FUNC6(&sc->kw_dma);
	FUNC6(&sc->fw_dma);

	FUNC7(sc);

	/* Finished with the hardware - detach things */
	FUNC13(dev);

	if (sc->sc_notif_wait != NULL) {
		FUNC12(sc->sc_notif_wait);
		sc->sc_notif_wait = NULL;
	}

	FUNC1(sc);

	return (0);
}