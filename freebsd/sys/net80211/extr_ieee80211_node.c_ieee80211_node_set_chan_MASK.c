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
struct ieee80211vap {int iv_flags_ht; int iv_flags; int /*<<< orphan*/ * iv_txparms; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_rates; int /*<<< orphan*/ * ni_txparms; int /*<<< orphan*/  ni_htrates; struct ieee80211_channel* ni_chan; struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct ieee80211_channel {int dummy; } ;
typedef  enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;

/* Variables and functions */
 struct ieee80211_channel* IEEE80211_CHAN_ANYC ; 
 int IEEE80211_FHT_PUREN ; 
 int IEEE80211_F_PUREG ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int IEEE80211_MODE_11A ; 
 int IEEE80211_MODE_11B ; 
 int IEEE80211_MODE_11G ; 
 int IEEE80211_MODE_11NA ; 
 int IEEE80211_MODE_11NG ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/ * FUNC3 (struct ieee80211com*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/ * FUNC4 (struct ieee80211com*,struct ieee80211_channel*) ; 

void
FUNC5(struct ieee80211_node *ni,
	struct ieee80211_channel *chan)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct ieee80211vap *vap = ni->ni_vap;
	enum ieee80211_phymode mode;

	FUNC1(chan != IEEE80211_CHAN_ANYC, ("no channel"));

	ni->ni_chan = chan;
	mode = FUNC2(chan);
	if (FUNC0(chan)) {
		/*
		 * We must install the legacy rate est in ni_rates and the
		 * HT rate set in ni_htrates.
		 */
		ni->ni_htrates = *FUNC3(ic, chan);
		/*
		 * Setup bss tx parameters based on operating mode.  We
		 * use legacy rates when operating in a mixed HT+non-HT bss
		 * and non-ERP rates in 11g for mixed ERP+non-ERP bss.
		 */
		if (mode == IEEE80211_MODE_11NA &&
		    (vap->iv_flags_ht & IEEE80211_FHT_PUREN) == 0)
			mode = IEEE80211_MODE_11A;
		else if (mode == IEEE80211_MODE_11NG &&
		    (vap->iv_flags_ht & IEEE80211_FHT_PUREN) == 0)
			mode = IEEE80211_MODE_11G;
		if (mode == IEEE80211_MODE_11G &&
		    (vap->iv_flags & IEEE80211_F_PUREG) == 0)
			mode = IEEE80211_MODE_11B;
	}
	ni->ni_txparms = &vap->iv_txparms[mode];
	ni->ni_rates = *FUNC4(ic, chan);
}