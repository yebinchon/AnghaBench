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
struct ieee80211vap {int iv_flags_ht; TYPE_1__* iv_bss; } ;
struct ieee80211_node {int ni_htcap; struct ieee80211vap* ni_vap; } ;
struct TYPE_2__ {int /*<<< orphan*/  ni_chan; } ;

/* Variables and functions */
 int IEEE80211_CHAN_HT20 ; 
 int IEEE80211_CHAN_HT40D ; 
 int IEEE80211_CHAN_HT40U ; 
 int IEEE80211_FHT_HT ; 
 int IEEE80211_FHT_USEHT40 ; 
 int IEEE80211_HTCAP_CHWIDTH40 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,int,int) ; 
 int FUNC3 (struct ieee80211_node*,int) ; 

void
FUNC4(struct ieee80211_node *ni)
{
	struct ieee80211vap *vap = ni->ni_vap;
	int htflags;
	int vhtflags;

	/* NB: honor operating mode constraint */
	/* XXX 40 MHz intolerant */
	htflags = (vap->iv_flags_ht & IEEE80211_FHT_HT) ?
	    IEEE80211_CHAN_HT20 : 0;
	if ((ni->ni_htcap & IEEE80211_HTCAP_CHWIDTH40) &&
	    (vap->iv_flags_ht & IEEE80211_FHT_USEHT40)) {
		if (FUNC1(vap->iv_bss->ni_chan))
			htflags = IEEE80211_CHAN_HT40U;
		else if (FUNC0(vap->iv_bss->ni_chan))
			htflags = IEEE80211_CHAN_HT40D;
	}
	/*
	 * VHT flags - do much the same; check whether VHT is available
	 * and if so, what our ideal channel use would be based on our
	 * capabilities and the (pre-parsed) VHT info IE.
	 */
	vhtflags = FUNC3(ni, htflags);

	(void) FUNC2(ni, htflags, vhtflags);
}