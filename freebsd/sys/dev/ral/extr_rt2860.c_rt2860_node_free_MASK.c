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
typedef  int /*<<< orphan*/  uint8_t ;
struct rt2860_softc {int /*<<< orphan*/  (* sc_node_free ) (struct ieee80211_node*) ;} ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {scalar_t__ ni_associd; struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_node *ni)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct rt2860_softc *sc = ic->ic_softc;
	uint8_t wcid;

	if (ni->ni_associd != 0) {
		wcid = FUNC0(ni->ni_associd);

		/* clear Rx WCID search table entry */
		FUNC1(sc, FUNC2(wcid), 0, 2);
	}
	sc->sc_node_free(ni);
}