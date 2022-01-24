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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  is_rx_rstoobig; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_rateset {scalar_t__ rs_nrates; scalar_t__ rs_rates; } ;
struct ieee80211_node {struct ieee80211_rateset ni_rates; struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MSG_XRATE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int /*<<< orphan*/ ,struct ieee80211_node*,char*,scalar_t__,scalar_t__ const) ; 
 scalar_t__ IEEE80211_RATE_MAXSIZE ; 
 int FUNC1 (struct ieee80211_node*,struct ieee80211_rateset*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rateset*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct ieee80211_node *ni,
	const uint8_t *rates, const uint8_t *xrates, int flags)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct ieee80211_rateset *rs = &ni->ni_rates;

	FUNC3(rs, 0, sizeof(*rs));
	rs->rs_nrates = rates[1];
	FUNC2(rs->rs_rates, rates + 2, rs->rs_nrates);
	if (xrates != NULL) {
		uint8_t nxrates;
		/*
		 * Tack on 11g extended supported rate element.
		 */
		nxrates = xrates[1];
		if (rs->rs_nrates + nxrates > IEEE80211_RATE_MAXSIZE) {
			nxrates = IEEE80211_RATE_MAXSIZE - rs->rs_nrates;
			FUNC0(vap, IEEE80211_MSG_XRATE, ni,
			    "extended rate set too large; only using "
			    "%u of %u rates", nxrates, xrates[1]);
			vap->iv_stats.is_rx_rstoobig++;
		}
		FUNC2(rs->rs_rates + rs->rs_nrates, xrates+2, nxrates);
		rs->rs_nrates += nxrates;
	}
	return FUNC1(ni, rs, flags);
}