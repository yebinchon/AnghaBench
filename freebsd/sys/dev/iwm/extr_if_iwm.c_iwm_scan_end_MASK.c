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
struct iwm_softc {int sc_flags; int /*<<< orphan*/  sc_es_task; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int /*<<< orphan*/  ic_tq; struct iwm_softc* ic_softc; int /*<<< orphan*/  ic_vaps; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_S_RUN ; 
 int IWM_FLAG_SCAN_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ieee80211com *ic)
{
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);
	struct iwm_softc *sc = ic->ic_softc;

	FUNC0(sc);
	FUNC3(sc);
	if (vap->iv_state == IEEE80211_S_RUN)
		FUNC4(sc);
	if (sc->sc_flags & IWM_FLAG_SCAN_RUNNING) {
		/*
		 * Removing IWM_FLAG_SCAN_RUNNING now, is fine because
		 * both iwm_scan_end and iwm_scan_start run in the ic->ic_tq
		 * taskqueue.
		 */
		sc->sc_flags &= ~IWM_FLAG_SCAN_RUNNING;
		FUNC5(sc);
	}
	FUNC1(sc);

	/*
	 * Make sure we don't race, if sc_es_task is still enqueued here.
	 * This is to make sure that it won't call ieee80211_scan_done
	 * when we have already started the next scan.
	 */
	FUNC6(ic->ic_tq, &sc->sc_es_task, NULL);
}