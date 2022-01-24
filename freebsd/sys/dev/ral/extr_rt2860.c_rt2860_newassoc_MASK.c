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
typedef  size_t uint8_t ;
struct rt2860_softc {struct ieee80211_node** wcid2ni; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {scalar_t__ ni_associd; int /*<<< orphan*/  ni_macaddr; struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_node *ni, int isnew)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct rt2860_softc *sc = ic->ic_softc;
	uint8_t wcid;

	wcid = FUNC1(ni->ni_associd);
	if (isnew && ni->ni_associd != 0) {
		sc->wcid2ni[wcid] = ni;

		/* init WCID table entry */
		FUNC2(sc, FUNC3(wcid),
		    ni->ni_macaddr, IEEE80211_ADDR_LEN);
	}
	FUNC0(("new assoc isnew=%d addr=%s WCID=%d\n",
	    isnew, FUNC4(ni->ni_macaddr), wcid));
}