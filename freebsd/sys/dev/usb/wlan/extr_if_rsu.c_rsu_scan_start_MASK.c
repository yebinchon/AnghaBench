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
struct rsu_softc {int sc_active_scan; int /*<<< orphan*/  sc_dev; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; struct ieee80211_scan_state* ic_scan; struct rsu_softc* ic_softc; } ;
struct ieee80211_scan_state {int ss_flags; scalar_t__ ss_nssid; int /*<<< orphan*/ * ss_ssid; } ;

/* Variables and functions */
 int IEEE80211_SCAN_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*) ; 
 int FUNC5 (struct rsu_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct rsu_softc *sc = ic->ic_softc;
	struct ieee80211_scan_state *ss = ic->ic_scan;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);
	int error;

	/* Scanning is done by the firmware. */
	FUNC0(sc);
	sc->sc_active_scan = !!(ss->ss_flags & IEEE80211_SCAN_ACTIVE);
	/* XXX TODO: force awake if in network-sleep? */
	error = FUNC5(sc, ss->ss_nssid > 0 ? &ss->ss_ssid[0] : NULL);
	FUNC1(sc);
	if (error != 0) {
		FUNC3(sc->sc_dev,
		    "could not send site survey command\n");
		FUNC4(vap);
	}
}