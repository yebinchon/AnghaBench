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
struct ieee80211com {scalar_t__ ic_promisc; struct bwn_softc* ic_softc; } ;
struct bwn_softc {int /*<<< orphan*/  sc_filters; struct bwn_mac* sc_curmac; } ;
struct bwn_mac {scalar_t__ mac_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  BWN_MACCTL_PROMISC ; 
 scalar_t__ BWN_MAC_STATUS_INITED ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct bwn_softc *sc = ic->ic_softc;
	struct bwn_mac *mac = sc->sc_curmac;

	FUNC0(sc);
	mac = sc->sc_curmac;
	if (mac != NULL && mac->mac_status >= BWN_MAC_STATUS_INITED) {
		if (ic->ic_promisc > 0)
			sc->sc_filters |= BWN_MACCTL_PROMISC;
		else
			sc->sc_filters &= ~BWN_MACCTL_PROMISC;
		FUNC2(mac);
	}
	FUNC1(sc);
}