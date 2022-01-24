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
typedef  int uint16_t ;
struct rtwn_softc {scalar_t__ bcn_vaps; scalar_t__ ap_vaps; scalar_t__ nvaps; scalar_t__ mon_vaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_ASSOC_REQ ; 
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_ASSOC_RESP ; 
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_PROBE_REQ ; 
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_REASSOC_REQ ; 
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_REASSOC_RESP ; 
 int /*<<< orphan*/  R92C_RXFLTMAP0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct rtwn_softc *sc)
{
	uint16_t filter;

	filter = 0x7f7f;
	if (sc->bcn_vaps == 0) {	/* STA and/or MONITOR mode vaps */
		filter &= ~(
		    FUNC0(IEEE80211_FC0_SUBTYPE_ASSOC_REQ) |
		    FUNC0(IEEE80211_FC0_SUBTYPE_REASSOC_REQ) |
		    FUNC0(IEEE80211_FC0_SUBTYPE_PROBE_REQ));
	}
	if (sc->ap_vaps == sc->nvaps - sc->mon_vaps) {	/* AP vaps only */
		filter &= ~(
		    FUNC0(IEEE80211_FC0_SUBTYPE_ASSOC_RESP) |
		    FUNC0(IEEE80211_FC0_SUBTYPE_REASSOC_RESP));
	}
	FUNC1(sc, R92C_RXFLTMAP0, filter);
}