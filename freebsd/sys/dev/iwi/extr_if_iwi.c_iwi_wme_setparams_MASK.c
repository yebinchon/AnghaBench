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
struct wmeParams {int /*<<< orphan*/  wmep_acm; int /*<<< orphan*/  wmep_txopLimit; int /*<<< orphan*/  wmep_logcwmax; int /*<<< orphan*/  wmep_logcwmin; int /*<<< orphan*/  wmep_aifsn; } ;
struct ieee80211com {int dummy; } ;
struct iwi_softc {TYPE_1__* wme; struct ieee80211com sc_ic; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;
struct TYPE_2__ {int /*<<< orphan*/ * acm; int /*<<< orphan*/ * burst; void** cwmax; void** cwmin; int /*<<< orphan*/ * aifsn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IWI_CMD_SET_WME_PARAMS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int WME_NUM_AC ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,struct chanAccParams*) ; 
 int FUNC4 (struct iwi_softc*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC5(struct iwi_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct chanAccParams chp;
	const struct wmeParams *wmep;
	int ac;

	FUNC3(ic, &chp);

	for (ac = 0; ac < WME_NUM_AC; ac++) {
		/* set WME values for current operating mode */
		wmep = &chp.cap_wmeParams[ac];
		sc->wme[0].aifsn[ac] = wmep->wmep_aifsn;
		sc->wme[0].cwmin[ac] = FUNC1(wmep->wmep_logcwmin);
		sc->wme[0].cwmax[ac] = FUNC1(wmep->wmep_logcwmax);
		sc->wme[0].burst[ac] = FUNC2(wmep->wmep_txopLimit);
		sc->wme[0].acm[ac]   = wmep->wmep_acm;
	}

	FUNC0(("Setting WME parameters\n"));
	return FUNC4(sc, IWI_CMD_SET_WME_PARAMS, sc->wme, sizeof sc->wme);
}