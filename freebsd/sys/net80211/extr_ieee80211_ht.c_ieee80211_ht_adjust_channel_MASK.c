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
struct ieee80211com {int dummy; } ;
struct ieee80211_channel {int ic_flags; int /*<<< orphan*/  ic_freq; } ;

/* Variables and functions */
 int IEEE80211_CHAN_HT ; 
 int /*<<< orphan*/  IEEE80211_CHAN_HT20 ; 
 int /*<<< orphan*/  IEEE80211_CHAN_HT40D ; 
 int /*<<< orphan*/  IEEE80211_CHAN_HT40U ; 
 int IEEE80211_FHT_HT ; 
 int IEEE80211_FHT_USEHT40 ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_channel*) ; 
 struct ieee80211_channel* FUNC3 (struct ieee80211com*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 struct ieee80211_channel* FUNC4 (struct ieee80211com*,int /*<<< orphan*/ ,int) ; 

struct ieee80211_channel *
FUNC5(struct ieee80211com *ic,
	struct ieee80211_channel *chan, int flags)
{
	struct ieee80211_channel *c;

	if (flags & IEEE80211_FHT_HT) {
		/* promote to HT if possible */
		if (flags & IEEE80211_FHT_USEHT40) {
			if (!FUNC2(chan)) {
				/* NB: arbitrarily pick ht40+ over ht40- */
				c = FUNC3(ic, chan, IEEE80211_CHAN_HT40U);
				if (c == NULL)
					c = FUNC3(ic, chan,
						IEEE80211_CHAN_HT40D);
				if (c == NULL)
					c = FUNC3(ic, chan,
						IEEE80211_CHAN_HT20);
				if (c != NULL)
					chan = c;
			}
		} else if (!FUNC1(chan)) {
			c = FUNC3(ic, chan, IEEE80211_CHAN_HT20);
			if (c != NULL)
				chan = c;
		}
	} else if (FUNC0(chan)) {
		/* demote to legacy, HT use is disabled */
		c = FUNC4(ic, chan->ic_freq,
		    chan->ic_flags &~ IEEE80211_CHAN_HT);
		if (c != NULL)
			chan = c;
	}
	return chan;
}