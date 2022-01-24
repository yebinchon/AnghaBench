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
struct ipw_softc {int flags; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211com {struct ipw_softc* ic_softc; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IPW_CMD_DISASSOCIATE ; 
 int IPW_FLAG_ASSOCIATED ; 
 int IPW_FLAG_FW_INITED ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic, struct ieee80211vap *vap)
{
	struct ieee80211_node *ni = vap->iv_bss;
	struct ipw_softc *sc = ic->ic_softc;

	FUNC1(sc);
	FUNC0(("Disassociate from %6D\n", ni->ni_bssid, ":"));
	/*
	 * NB: don't try to do this if ipw_stop_master has
	 *     shutdown the firmware and disabled interrupts.
	 */
	if (sc->flags & IPW_FLAG_FW_INITED) {
		sc->flags &= ~IPW_FLAG_ASSOCIATED;
		/*
		 * NB: firmware currently ignores bssid parameter, but
		 *     supply it in case this changes (follow linux driver).
		 */
		(void) FUNC3(sc, IPW_CMD_DISASSOCIATE,
			ni->ni_bssid, IEEE80211_ADDR_LEN);
	}
	FUNC2(sc);
}