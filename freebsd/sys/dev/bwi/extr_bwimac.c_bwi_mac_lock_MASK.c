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
struct ieee80211com {scalar_t__ ic_opmode; } ;
struct bwi_softc {struct ieee80211com sc_ic; } ;
struct bwi_mac {int mac_flags; int mac_rev; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int BWI_MAC_F_LOCKED ; 
 int /*<<< orphan*/  BWI_MAC_STATUS ; 
 int /*<<< orphan*/  BWI_MAC_STATUS_RFLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*) ; 

__attribute__((used)) static void
FUNC6(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC3((mac->mac_flags & BWI_MAC_F_LOCKED) == 0,
	    ("mac_flags 0x%x", mac->mac_flags));

	if (mac->mac_rev < 3)
		FUNC5(mac);
	else if (ic->ic_opmode != IEEE80211_M_HOSTAP)
		FUNC4(mac);

	FUNC1(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_RFLOCK);

	/* Flush pending bus write */
	FUNC0(sc, BWI_MAC_STATUS);
	FUNC2(10);

	mac->mac_flags |= BWI_MAC_F_LOCKED;
}