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
struct ieee80211_dfs_state {int* nol_event; int /*<<< orphan*/  nol_timer; } ;
struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; struct ieee80211_dfs_state ic_dfs; } ;
struct ieee80211_channel {int ic_state; int /*<<< orphan*/  ic_freq; int /*<<< orphan*/  ic_ieee; } ;

/* Variables and functions */
 int IEEE80211_CHANSTATE_NORADAR ; 
 int IEEE80211_CHANSTATE_RADAR ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 scalar_t__ NOL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*,struct ieee80211_channel*) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 
 int ticks ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct ieee80211com *ic = arg;
	struct ieee80211_dfs_state *dfs = &ic->ic_dfs;
	struct ieee80211_channel *c;
	int i, oldest, now;

	FUNC1(ic);

	now = oldest = ticks;
	for (i = 0; i < ic->ic_nchans; i++) {
		c = &ic->ic_channels[i];
		if (FUNC0(c)) {
			if (FUNC5(now, dfs->nol_event[i]+NOL_TIMEOUT)) {
				c->ic_state &= ~IEEE80211_CHANSTATE_RADAR;
				if (c->ic_state & IEEE80211_CHANSTATE_NORADAR) {
					/*
					 * NB: do this here so we get only one
					 * msg instead of one for every channel
					 * table entry.
					 */
					FUNC3(ic, "radar on channel %u "
					    "(%u MHz) cleared after timeout\n",
					    c->ic_ieee, c->ic_freq);
					/* notify user space */
					c->ic_state &=
					    ~IEEE80211_CHANSTATE_NORADAR;
					FUNC4(ic, c);
				}
			} else if (dfs->nol_event[i] < oldest)
				oldest = dfs->nol_event[i];
		}
	}
	if (oldest != now) {
		/* arrange to process next channel up for a status change */
		FUNC2(&dfs->nol_timer, oldest + NOL_TIMEOUT - now);
	}
}