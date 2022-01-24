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
typedef  int /*<<< orphan*/  uint32_t ;
struct ieee80211vap {int /*<<< orphan*/ * iv_bss; } ;
struct rtwn_vap {scalar_t__ curr_mode; struct ieee80211vap vap; } ;
struct ieee80211com {int ic_flags; } ;
struct rtwn_softc {struct rtwn_vap** vaps; struct ieee80211com sc_ic; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_rates; } ;

/* Variables and functions */
 int IEEE80211_F_SCAN ; 
 scalar_t__ R92C_MSR_NOLINK ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rtwn_vap**) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct rtwn_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t basicrates;
	int i;

	FUNC0(sc);

	if (ic->ic_flags & IEEE80211_F_SCAN)
		return;		/* will be done by rtwn_scan_end(). */

	basicrates = 0;
	for (i = 0; i < FUNC3(sc->vaps); i++) {
		struct rtwn_vap *rvp;
		struct ieee80211vap *vap;
		struct ieee80211_node *ni;
		uint32_t rates;

		rvp = sc->vaps[i];
		if (rvp == NULL || rvp->curr_mode == R92C_MSR_NOLINK)
			continue;

		vap = &rvp->vap;
		if (vap->iv_bss == NULL)
			continue;

		ni = FUNC2(vap->iv_bss);
		FUNC4(sc, &ni->ni_rates, NULL, &rates, NULL, 1);
		basicrates |= rates;
		FUNC1(ni);
	}

	if (basicrates == 0)
		return;

	/* XXX initial RTS rate? */
	FUNC5(sc, basicrates);
}