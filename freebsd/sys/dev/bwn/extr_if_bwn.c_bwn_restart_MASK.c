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
struct ieee80211com {int dummy; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct bwn_mac {scalar_t__ mac_status; int /*<<< orphan*/  mac_hwreset; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ BWN_MAC_STATUS_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac, const char *msg)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct ieee80211com *ic = &sc->sc_ic;

	if (mac->mac_status < BWN_MAC_STATUS_INITED)
		return;

	FUNC0(sc->sc_dev, "HW reset: %s\n", msg);
	FUNC1(ic, &mac->mac_hwreset);
}