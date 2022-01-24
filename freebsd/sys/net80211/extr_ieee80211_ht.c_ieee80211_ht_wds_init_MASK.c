#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ieee80211vap {int iv_flags_ht; } ;
struct ieee80211_tx_ampdu {int txa_tid; } ;
struct ieee80211_node {int ni_chw; int ni_flags; struct ieee80211_tx_ampdu* ni_tx_ampdu; scalar_t__ ni_htstbc; scalar_t__ ni_htopmode; TYPE_1__* ni_chan; int /*<<< orphan*/  ni_htctlchan; int /*<<< orphan*/  ni_ht2ndchan; int /*<<< orphan*/  ni_htcap; int /*<<< orphan*/  ni_ic; struct ieee80211vap* ni_vap; } ;
struct TYPE_7__ {int /*<<< orphan*/  ic_ieee; } ;

/* Variables and functions */
 int IEEE80211_FHT_HT ; 
 int IEEE80211_FHT_RIFS ; 
 int IEEE80211_FHT_SHORTGI20 ; 
 int IEEE80211_FHT_SHORTGI40 ; 
 int /*<<< orphan*/  IEEE80211_HTCAP_CHWIDTH40 ; 
 int /*<<< orphan*/  IEEE80211_HTCAP_SHORTGI20 ; 
 int /*<<< orphan*/  IEEE80211_HTCAP_SHORTGI40 ; 
 int /*<<< orphan*/  IEEE80211_HTINFO_2NDCHAN_ABOVE ; 
 int /*<<< orphan*/  IEEE80211_HTINFO_2NDCHAN_BELOW ; 
 int /*<<< orphan*/  IEEE80211_HTINFO_2NDCHAN_NONE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int IEEE80211_NODE_AMPDU ; 
 int IEEE80211_NODE_HT ; 
 int IEEE80211_NODE_RIFS ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int WME_NUM_TID ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_tx_ampdu*) ; 

void
FUNC7(struct ieee80211_node *ni)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct ieee80211_tx_ampdu *tap;
	int tid;

	FUNC3(vap->iv_flags_ht & IEEE80211_FHT_HT, ("no HT requested"));

	/* XXX check scan cache in case peer has an ap and we have info */
	/*
	 * If setup with a legacy channel; locate an HT channel.
	 * Otherwise if the inherited channel (from a companion
	 * AP) is suitable use it so we use the same location
	 * for the extension channel).
	 */
	ni->ni_chan = FUNC4(ni->ni_ic,
	    ni->ni_chan, FUNC5(ni->ni_chan));

	ni->ni_htcap = 0;
	if (vap->iv_flags_ht & IEEE80211_FHT_SHORTGI20)
		ni->ni_htcap |= IEEE80211_HTCAP_SHORTGI20;
	if (FUNC0(ni->ni_chan)) {
		ni->ni_htcap |= IEEE80211_HTCAP_CHWIDTH40;
		ni->ni_chw = 40;
		if (FUNC2(ni->ni_chan))
			ni->ni_ht2ndchan = IEEE80211_HTINFO_2NDCHAN_ABOVE;
		else if (FUNC1(ni->ni_chan))
			ni->ni_ht2ndchan = IEEE80211_HTINFO_2NDCHAN_BELOW;
		if (vap->iv_flags_ht & IEEE80211_FHT_SHORTGI40)
			ni->ni_htcap |= IEEE80211_HTCAP_SHORTGI40;
	} else {
		ni->ni_chw = 20;
		ni->ni_ht2ndchan = IEEE80211_HTINFO_2NDCHAN_NONE;
	}
	ni->ni_htctlchan = ni->ni_chan->ic_ieee;
	if (vap->iv_flags_ht & IEEE80211_FHT_RIFS)
		ni->ni_flags |= IEEE80211_NODE_RIFS;
	/* XXX does it make sense to enable SMPS? */

	ni->ni_htopmode = 0;		/* XXX need protection state */
	ni->ni_htstbc = 0;		/* XXX need info */

	for (tid = 0; tid < WME_NUM_TID; tid++) {
		tap = &ni->ni_tx_ampdu[tid];
		tap->txa_tid = tid;
		FUNC6(tap);
	}
	/* NB: AMPDU tx/rx governed by IEEE80211_FHT_AMPDU_{TX,RX} */
	ni->ni_flags |= IEEE80211_NODE_HT | IEEE80211_NODE_AMPDU;
}