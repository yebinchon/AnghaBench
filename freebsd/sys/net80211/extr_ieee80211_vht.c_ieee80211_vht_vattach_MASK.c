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
struct ieee80211vap {int iv_flags_vht; int /*<<< orphan*/  iv_vht_mcsinfo; int /*<<< orphan*/  iv_vhtextcaps; int /*<<< orphan*/  iv_vhtcaps; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_vht_mcsinfo; int /*<<< orphan*/  ic_vhtextcaps; int /*<<< orphan*/  ic_vhtcaps; } ;
struct ieee80211_vht_mcs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int IEEE80211_FVHT_USEVHT40 ; 
 int IEEE80211_FVHT_USEVHT80 ; 
 int IEEE80211_FVHT_VHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC2(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;

	if (! FUNC0(ic))
		return;

	vap->iv_vhtcaps = ic->ic_vhtcaps;
	vap->iv_vhtextcaps = ic->ic_vhtextcaps;

	/* XXX assume VHT80 support; should really check vhtcaps */
	vap->iv_flags_vht =
	    IEEE80211_FVHT_VHT
	    | IEEE80211_FVHT_USEVHT40
	    | IEEE80211_FVHT_USEVHT80;
	/* XXX TODO: enable VHT80+80, VHT160 capabilities */

	FUNC1(&vap->iv_vht_mcsinfo, &ic->ic_vht_mcsinfo,
	    sizeof(struct ieee80211_vht_mcs_info));
}