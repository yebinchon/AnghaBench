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
struct ieee80211com {struct run_softc* ic_softc; } ;
struct run_softc {int sc_detached; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  ratectl_task; int /*<<< orphan*/  cmdq_task; int /*<<< orphan*/  ratectl_ch; struct ieee80211com sc_ic; int /*<<< orphan*/ * sc_epq; int /*<<< orphan*/  cmdq_key_set; int /*<<< orphan*/  cmdq_run; int /*<<< orphan*/  ratectl_run; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_CMDQ_ABORT ; 
 int RUN_EP_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 int /*<<< orphan*/  RUN_N_XFER ; 
 int /*<<< orphan*/  RUN_RATECTL_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 struct run_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct run_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t self)
{
	struct run_softc *sc = FUNC2(self);
	struct ieee80211com *ic = &sc->sc_ic;
	int i;

	FUNC0(sc);
	sc->sc_detached = 1;
	FUNC1(sc);

	/* stop all USB transfers */
	FUNC9(sc->sc_xfer, RUN_N_XFER);

	FUNC0(sc);
	sc->ratectl_run = RUN_RATECTL_OFF;
	sc->cmdq_run = sc->cmdq_key_set = RUN_CMDQ_ABORT;

	/* free TX list, if any */
	for (i = 0; i != RUN_EP_QUEUES; i++)
		FUNC7(sc, &sc->sc_epq[i]);

	/* Free TX queue */
	FUNC6(sc);
	FUNC1(sc);

	if (sc->sc_ic.ic_softc == sc) {
		/* drain tasks */
		FUNC8(&sc->ratectl_ch);
		FUNC3(ic, &sc->cmdq_task);
		FUNC3(ic, &sc->ratectl_task);
		FUNC4(ic);
	}

	FUNC5(&sc->sc_mtx);

	return (0);
}