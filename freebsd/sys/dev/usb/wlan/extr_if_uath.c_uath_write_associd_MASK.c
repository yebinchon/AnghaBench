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
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct uath_softc {struct ieee80211com sc_ic; } ;
struct uath_cmd_set_associd {int /*<<< orphan*/  bssid; void* timoffset; void* associd; void* defaultrateix; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_bss; } ;
struct ieee80211_node {int ni_associd; int /*<<< orphan*/  ni_bssid; } ;
typedef  int /*<<< orphan*/  associd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211vap* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WDCMSG_WRITE_ASSOCID ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uath_cmd_set_associd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct uath_softc*,int /*<<< orphan*/ ,struct uath_cmd_set_associd*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uath_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC1(&ic->ic_vaps);
	struct ieee80211_node *ni;
	struct uath_cmd_set_associd associd;

	ni = FUNC4(vap->iv_bss);
	FUNC5(&associd, 0, sizeof(associd));
	associd.defaultrateix = FUNC2(1);	/* XXX */
	associd.associd = FUNC2(ni->ni_associd);
	associd.timoffset = FUNC2(0x3b);	/* XXX */
	FUNC0(associd.bssid, ni->ni_bssid);
	FUNC3(ni);
	return FUNC6(sc, WDCMSG_WRITE_ASSOCID, &associd,
	    sizeof associd, 0);
}