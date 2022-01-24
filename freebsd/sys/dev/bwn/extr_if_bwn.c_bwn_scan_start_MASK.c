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
struct ieee80211com {struct bwn_softc* ic_softc; } ;
struct bwn_softc {int /*<<< orphan*/  sc_filters; struct bwn_mac* sc_curmac; } ;
struct bwn_mac {scalar_t__ mac_status; } ;

/* Variables and functions */
 int BWN_HF_SKIP_CFP_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  BWN_MACCTL_BEACON_PROMISC ; 
 scalar_t__ BWN_MAC_STATUS_INITED ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct bwn_softc *sc = ic->ic_softc;
	struct bwn_mac *mac;

	FUNC0(sc);
	mac = sc->sc_curmac;
	if (mac != NULL && mac->mac_status >= BWN_MAC_STATUS_INITED) {
		sc->sc_filters |= BWN_MACCTL_BEACON_PROMISC;
		FUNC4(mac);
		/* disable CFP update during scan */
		FUNC3(mac, FUNC2(mac) | BWN_HF_SKIP_CFP_UPDATE);
	}
	FUNC1(sc);
}