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
typedef  int uint8_t ;
struct ieee80211vap {scalar_t__ iv_opmode; int iv_flags; scalar_t__ iv_des_nssid; int /*<<< orphan*/  iv_des_bssid; int /*<<< orphan*/  iv_des_ssid; } ;
struct ieee80211com {int /*<<< orphan*/  ic_chan_active; } ;
struct ieee80211_node {int ni_capinfo; int /*<<< orphan*/  ni_bssid; int /*<<< orphan*/  ni_rates; int /*<<< orphan*/  ni_chan; struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IEEE80211_CAPINFO_ESS ; 
 int IEEE80211_CAPINFO_IBSS ; 
 int IEEE80211_CAPINFO_PRIVACY ; 
 int IEEE80211_F_DESBSSID ; 
 int IEEE80211_F_DOFRATE ; 
 int IEEE80211_F_DONEGO ; 
 int IEEE80211_F_JOIN ; 
 int IEEE80211_F_PRIVACY ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 int IEEE80211_RATE_BASIC ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_node*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211vap *vap, struct ieee80211_node *ni)
{
	struct ieee80211com *ic = ni->ni_ic;
        uint8_t rate;

	if (FUNC3(ic->ic_chan_active, FUNC1(ic, ni->ni_chan)))
		return 0;
	if (vap->iv_opmode == IEEE80211_M_IBSS) {
		if ((ni->ni_capinfo & IEEE80211_CAPINFO_IBSS) == 0)
			return 0;
	} else {
		if ((ni->ni_capinfo & IEEE80211_CAPINFO_ESS) == 0)
			return 0;
	}
	if (vap->iv_flags & IEEE80211_F_PRIVACY) {
		if ((ni->ni_capinfo & IEEE80211_CAPINFO_PRIVACY) == 0)
			return 0;
	} else {
		/* XXX does this mean privacy is supported or required? */
		if (ni->ni_capinfo & IEEE80211_CAPINFO_PRIVACY)
			return 0;
	}
	rate = FUNC2(ni, &ni->ni_rates,
	    IEEE80211_F_JOIN | IEEE80211_F_DONEGO | IEEE80211_F_DOFRATE);
	if (rate & IEEE80211_RATE_BASIC)
		return 0;
	if (vap->iv_des_nssid != 0 &&
	    !FUNC4(ni, vap->iv_des_nssid, vap->iv_des_ssid))
		return 0;
	if ((vap->iv_flags & IEEE80211_F_DESBSSID) &&
	    !FUNC0(vap->iv_des_bssid, ni->ni_bssid))
		return 0;
	return 1;
}