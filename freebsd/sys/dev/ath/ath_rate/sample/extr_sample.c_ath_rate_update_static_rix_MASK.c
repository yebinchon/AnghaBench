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
struct sample_node {int static_rix; } ;
struct ieee80211_txparam {scalar_t__ ucastrate; } ;
struct ieee80211_node {struct ieee80211_txparam* ni_txparms; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int dummy; } ;

/* Variables and functions */
 struct ath_node* FUNC0 (struct ieee80211_node*) ; 
 struct sample_node* FUNC1 (struct ath_node*) ; 
 scalar_t__ IEEE80211_FIXED_RATE_NONE ; 
 int FUNC2 (struct ath_softc*,struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC3(struct ath_softc *sc, struct ieee80211_node *ni)
{
	struct ath_node *an = FUNC0(ni);
	const struct ieee80211_txparam *tp = ni->ni_txparms;
	struct sample_node *sn = FUNC1(an);

	if (tp != NULL && tp->ucastrate != IEEE80211_FIXED_RATE_NONE) {
		/*
		 * A fixed rate is to be used; ucastrate is the IEEE code
		 * for this rate (sans basic bit).  Check this against the
		 * negotiated rate set for the node.  Note the fixed rate
		 * may not be available for various reasons so we only
		 * setup the static rate index if the lookup is successful.
		 */
		sn->static_rix = FUNC2(sc, ni);
	} else {
		sn->static_rix = -1;
	}
}