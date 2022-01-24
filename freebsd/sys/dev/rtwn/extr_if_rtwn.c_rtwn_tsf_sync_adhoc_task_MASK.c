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
struct rtwn_vap {int /*<<< orphan*/  tsf_sync_adhoc; int /*<<< orphan*/  id; } ;
struct rtwn_softc {int /*<<< orphan*/  sc_flags; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_bss; TYPE_1__* iv_ic; } ;
struct ieee80211_node {int ni_intval; } ;
struct TYPE_2__ {struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_BCN_CTRL_DIS_TSF_UDT0 ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  RTWN_RCR_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 struct rtwn_vap* FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ieee80211vap*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtwn_tsf_sync_adhoc ; 

__attribute__((used)) static void
FUNC10(void *arg, int pending)
{
	struct ieee80211vap *vap = arg;
	struct rtwn_vap *uvp = FUNC3(vap);
	struct rtwn_softc *sc = vap->iv_ic->ic_softc;
	struct ieee80211_node *ni;

	FUNC1(sc);
	ni = FUNC6(vap->iv_bss);

	/* Accept beacons with the same BSSID. */
	FUNC8(sc, 0);

	/* Deny RCR updates. */
	sc->sc_flags |= RTWN_RCR_LOCKED;

	/* Enable synchronization. */
	FUNC9(sc, FUNC0(uvp->id),
	    R92C_BCN_CTRL_DIS_TSF_UDT0, 0);

	/* Synchronize. */
	FUNC7(sc, ni->ni_intval * 5 * 1000);

	/* Disable synchronization. */
	FUNC9(sc, FUNC0(uvp->id),
	    0, R92C_BCN_CTRL_DIS_TSF_UDT0);

	/* Accept all beacons. */
	sc->sc_flags &= ~RTWN_RCR_LOCKED;
	FUNC8(sc, 1);

	/* Schedule next TSF synchronization. */
	FUNC4(&uvp->tsf_sync_adhoc, 60*hz, rtwn_tsf_sync_adhoc, vap);

	FUNC5(ni);
	FUNC2(sc);
}