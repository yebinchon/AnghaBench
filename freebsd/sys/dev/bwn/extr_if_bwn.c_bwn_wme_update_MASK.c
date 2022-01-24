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
struct wmeParams {int dummy; } ;
struct ieee80211com {struct bwn_softc* ic_softc; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;
struct bwn_softc {int /*<<< orphan*/  sc_wmeParams; struct bwn_mac* sc_curmac; } ;
struct bwn_mac {scalar_t__ mac_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 scalar_t__ BWN_MAC_STATUS_INITED ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,struct wmeParams*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bwn_wme_shm_offsets ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*,struct chanAccParams*) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211com *ic)
{
	struct bwn_softc *sc = ic->ic_softc;
	struct bwn_mac *mac = sc->sc_curmac;
	struct chanAccParams chp;
	struct wmeParams *wmep;
	int i;

	FUNC6(ic, &chp);

	FUNC0(sc);
	mac = sc->sc_curmac;
	if (mac != NULL && mac->mac_status >= BWN_MAC_STATUS_INITED) {
		FUNC4(mac);
		for (i = 0; i < FUNC2(sc->sc_wmeParams); i++) {
			wmep = &chp.cap_wmeParams[i];
			FUNC5(mac, wmep, bwn_wme_shm_offsets[i]);
		}
		FUNC3(mac);
	}
	FUNC1(sc);
	return (0);
}