#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
struct run_vap {int /*<<< orphan*/  (* recv_mgmt ) (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ;} ;
struct run_softc {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; TYPE_1__* iv_ic; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct TYPE_4__ {scalar_t__ tsf; } ;
struct ieee80211_node {TYPE_2__ ni_tstamp; struct ieee80211vap* ni_vap; } ;
struct TYPE_3__ {struct run_softc* ic_softc; } ;

/* Variables and functions */
 int IEEE80211_FC0_SUBTYPE_BEACON ; 
 int IEEE80211_FC0_SUBTYPE_PROBE_RESP ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int RUN_DEBUG_BEACON ; 
 int RUN_DEBUG_RECV ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*) ; 
 struct run_vap* FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ; 

__attribute__((used)) static void
FUNC8(struct ieee80211_node *ni, struct mbuf *m, int subtype,
    const struct ieee80211_rx_stats *rxs, int rssi, int nf)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct run_softc *sc = vap->iv_ic->ic_softc;
	struct run_vap *rvp = FUNC3(vap);
	uint64_t ni_tstamp, rx_tstamp;

	rvp->recv_mgmt(ni, m, subtype, rxs, rssi, nf);

	if (vap->iv_state == IEEE80211_S_RUN &&
	    (subtype == IEEE80211_FC0_SUBTYPE_BEACON ||
	    subtype == IEEE80211_FC0_SUBTYPE_PROBE_RESP)) {
		ni_tstamp = FUNC5(ni->ni_tstamp.tsf);
		FUNC1(sc);
		FUNC6(sc, &rx_tstamp);
		FUNC2(sc);
		rx_tstamp = FUNC5(rx_tstamp);

		if (ni_tstamp >= rx_tstamp) {
			FUNC0(sc, RUN_DEBUG_RECV | RUN_DEBUG_BEACON,
			    "ibss merge, tsf %ju tstamp %ju\n",
			    (uintmax_t)rx_tstamp, (uintmax_t)ni_tstamp);
			(void) FUNC4(ni);
		}
	}
}