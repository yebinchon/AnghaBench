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
struct iwi_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct iwi_softc* ic_softc; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_txrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWI_CSR_CURRENT_TX_RATE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct ifmediareq*) ; 
 struct ieee80211_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp, struct ifmediareq *imr)
{
	struct ieee80211vap *vap = ifp->if_softc;
	struct ieee80211com *ic = vap->iv_ic;
	struct iwi_softc *sc = ic->ic_softc;
	struct ieee80211_node *ni;

	/* read current transmission rate from adapter */
	ni = FUNC3(vap->iv_bss);
	ni->ni_txrate =
	    FUNC4(FUNC0(sc, IWI_CSR_CURRENT_TX_RATE));
	FUNC1(ni);
	FUNC2(ifp, imr);
}