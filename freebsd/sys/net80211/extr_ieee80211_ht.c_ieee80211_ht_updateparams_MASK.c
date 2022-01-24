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
typedef  scalar_t__ uint8_t ;
struct ieee80211vap {int iv_htcaps; int iv_flags_ht; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_flags; struct ieee80211vap* ni_vap; } ;
struct ieee80211_ie_htinfo {int hi_byte1; } ;

/* Variables and functions */
 scalar_t__ const IEEE80211_ELEMID_VENDOR ; 
 int IEEE80211_FHT_RIFS ; 
 int IEEE80211_HTC_SMPS ; 
 int IEEE80211_HTINFO_RIFSMODE_PERM ; 
 int /*<<< orphan*/  IEEE80211_NODE_RIFS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*,struct ieee80211_ie_htinfo const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*,scalar_t__ const*) ; 

void
FUNC5(struct ieee80211_node *ni,
	const uint8_t *htcapie, const uint8_t *htinfoie)
{
	struct ieee80211vap *vap = ni->ni_vap;
	const struct ieee80211_ie_htinfo *htinfo;

	FUNC4(ni, htcapie);
	if (vap->iv_htcaps & IEEE80211_HTC_SMPS)
		FUNC1(ni);
	FUNC2(ni);
	FUNC0(ni);

	if (htinfoie[0] == IEEE80211_ELEMID_VENDOR)
		htinfoie += 4;
	htinfo = (const struct ieee80211_ie_htinfo *) htinfoie;
	FUNC3(ni, htinfo);

	/*
	 * Defer the node channel change; we need to now
	 * update VHT parameters before we do it.
	 */

	if ((htinfo->hi_byte1 & IEEE80211_HTINFO_RIFSMODE_PERM) &&
	    (vap->iv_flags_ht & IEEE80211_FHT_RIFS))
		ni->ni_flags |= IEEE80211_NODE_RIFS;
	else
		ni->ni_flags &= ~IEEE80211_NODE_RIFS;
}