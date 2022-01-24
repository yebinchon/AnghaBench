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
struct ieee80211com {int ic_htcaps; scalar_t__ ic_vhtcaps; struct ieee80211_channel* ic_curchan; int /*<<< orphan*/  ic_rt; int /*<<< orphan*/  ic_curmode; struct ieee80211_channel* ic_bsschan; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int IEEE80211_HTC_HT ; 
 int FUNC0 (struct ieee80211com*) ; 
 int FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_channel*) ; 
 struct ieee80211_channel* FUNC4 (struct ieee80211com*,struct ieee80211_channel*,int) ; 
 int FUNC5 (struct ieee80211_channel*) ; 
 struct ieee80211_channel* FUNC6 (struct ieee80211com*,struct ieee80211_channel*,int) ; 
 int FUNC7 (struct ieee80211_channel*) ; 

void
FUNC8(struct ieee80211com *ic, struct ieee80211_channel *c)
{
	if (ic->ic_htcaps & IEEE80211_HTC_HT) {
		int flags = FUNC0(ic);
		/*
		 * Check for channel promotion required to support the
		 * set of running vap's.  This assumes we are called
		 * after ni_chan is setup for each vap.
		 */
		/* XXX VHT? */
		/* NB: this assumes IEEE80211_FHT_USEHT40 > IEEE80211_FHT_HT */
		if (flags > FUNC5(c))
			c = FUNC4(ic, c, flags);
	}

	/*
	 * VHT promotion - this will at least promote to VHT20/40
	 * based on what HT has done; it may further promote the
	 * channel to VHT80 or above.
	 */
	if (ic->ic_vhtcaps != 0) {
		int flags = FUNC1(ic);
		if (flags > FUNC7(c))
			c = FUNC6(ic, c, flags);
	}

	ic->ic_bsschan = ic->ic_curchan = c;
	ic->ic_curmode = FUNC2(ic->ic_curchan);
	ic->ic_rt = FUNC3(ic->ic_curchan);
}