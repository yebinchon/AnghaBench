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
struct otus_softc {int dummy; } ;
struct otus_node {scalar_t__ tx_retries; scalar_t__ tx_err; scalar_t__ tx_done; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_macaddr; struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTUS_DEBUG_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct otus_softc*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct otus_node* FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct ieee80211_node *ni, int isnew)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct otus_softc *sc = ic->ic_softc;
	struct otus_node *on = FUNC1(ni);

	FUNC0(sc, OTUS_DEBUG_STATE, "new assoc isnew=%d addr=%s\n",
	    isnew, FUNC2(ni->ni_macaddr));

	on->tx_done = 0;
	on->tx_err = 0;
	on->tx_retries = 0;
}