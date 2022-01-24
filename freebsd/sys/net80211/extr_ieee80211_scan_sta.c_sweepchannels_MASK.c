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
struct scanlist {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_des_mode; struct ieee80211_channel* iv_des_chan; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; } ;
struct ieee80211_scan_state {scalar_t__ ss_last; struct ieee80211_channel** ss_chans; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 struct ieee80211_channel* IEEE80211_CHAN_ANYC ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel*) ; 
 scalar_t__ IEEE80211_MODE_AUTO ; 
 scalar_t__ IEEE80211_SCAN_MAX ; 
 scalar_t__ FUNC3 (struct scanlist const*,struct ieee80211_channel*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC5 (struct ieee80211vap*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_scan_state*,struct ieee80211_channel*) ; 

__attribute__((used)) static void
FUNC7(struct ieee80211_scan_state *ss, struct ieee80211vap *vap,
	const struct scanlist table[])
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_channel *c;
	int i;

	for (i = 0; i < ic->ic_nchans; i++) {
		if (ss->ss_last >= IEEE80211_SCAN_MAX)
			break;

		c = &ic->ic_channels[i];
		/*
		 * Ignore dynamic turbo channels; we scan them
		 * in normal mode (i.e. not boosted).  Likewise
		 * for HT/VHT channels, they get scanned using
		 * legacy rates.
		 */
		if (FUNC0(c) || FUNC1(c) ||
		    FUNC2(c))
			continue;

		/*
		 * If a desired mode was specified, scan only 
		 * channels that satisfy that constraint.
		 */
		if (vap->iv_des_mode != IEEE80211_MODE_AUTO &&
		    vap->iv_des_mode != FUNC4(c))
			continue;

		/*
		 * Skip channels excluded by user request.
		 */
		if (FUNC5(vap, c))
			continue;

		/*
		 * Add the channel unless it is listed in the
		 * fixed scan order tables.  This insures we
		 * don't sweep back in channels we filtered out
		 * above.
		 */
		if (FUNC3(table, c))
			continue;

		/* Add channel to scanning list. */
		ss->ss_chans[ss->ss_last++] = c;
	}
	/*
	 * Explicitly add any desired channel if:
	 * - not already on the scan list
	 * - allowed by any desired mode constraint
	 * - there is space in the scan list
	 * This allows the channel to be used when the filtering
	 * mechanisms would otherwise elide it (e.g HT, turbo).
	 */
	c = vap->iv_des_chan;
	if (c != IEEE80211_CHAN_ANYC &&
	    !FUNC6(ss, c) &&
	    (vap->iv_des_mode == IEEE80211_MODE_AUTO ||
	     vap->iv_des_mode == FUNC4(c)) &&
	    ss->ss_last < IEEE80211_SCAN_MAX)
		ss->ss_chans[ss->ss_last++] = c;
}