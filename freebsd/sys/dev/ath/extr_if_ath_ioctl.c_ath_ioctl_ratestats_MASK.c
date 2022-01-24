#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211com {int /*<<< orphan*/  ic_sta; } ;
struct ieee80211_node {int dummy; } ;
struct ath_softc {struct ieee80211com sc_ic; } ;
struct TYPE_2__ {int /*<<< orphan*/  macaddr; } ;
struct ath_rateioctl {TYPE_1__ is_u; } ;
struct ath_node {int dummy; } ;

/* Variables and functions */
 struct ath_node* FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_node*) ; 
 int EINVAL ; 
 int FUNC3 (struct ath_softc*,struct ath_node*,struct ath_rateioctl*) ; 
 struct ieee80211_node* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_node*) ; 

__attribute__((used)) static int
FUNC6(struct ath_softc *sc, struct ath_rateioctl *rs)
{
	struct ath_node *an;
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211_node *ni;
	int error = 0;

	/* Perform a lookup on the given node */
	ni = FUNC4(&ic->ic_sta, rs->is_u.macaddr);
	if (ni == NULL) {
		error = EINVAL;
		goto bad;
	}

	/* Lock the ath_node */
	an = FUNC0(ni);
	FUNC1(an);

	/* Fetch the rate control stats for this node */
	error = FUNC3(sc, an, rs);

	/* No matter what happens here, just drop through */

	/* Unlock the ath_node */
	FUNC2(an);

	/* Unref the node */
	FUNC5(ni);

bad:
	return (error);
}