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
typedef  int /*<<< orphan*/  v ;
typedef  int uint16_t ;
struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; TYPE_1__* ic_curchan; } ;
struct ieee80211_channel {int ic_flags; } ;
struct TYPE_2__ {int ic_flags; } ;

/* Variables and functions */
 int IEEE80211_CHAN_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,char*) ; 
 struct ieee80211_channel* FUNC3 (struct ieee80211com*,int) ; 

struct ieee80211_channel *
FUNC4(struct ieee80211com *ic)
{
	struct ieee80211_channel *c;
	int i, flags;
	uint16_t v;

	/*
	 * Consult the scan cache first.
	 */
	flags = ic->ic_curchan->ic_flags & IEEE80211_CHAN_ALL;
	/*
	 * XXX if curchan is HT this will never find a channel
	 * XXX 'cuz we scan only legacy channels
	 */
	c = FUNC3(ic, flags);
	if (c != NULL)
		return c;
	/*
	 * No channel found in scan cache; select a compatible
	 * one at random (skipping channels where radar has
	 * been detected).
	 */
	FUNC1(&v, sizeof(v));
	v %= ic->ic_nchans;
	for (i = v; i < ic->ic_nchans; i++) {
		c = &ic->ic_channels[i];
		if (!FUNC0(c) &&
		   (c->ic_flags & flags) == flags)
			return c;
	}
	for (i = 0; i < v; i++) {
		c = &ic->ic_channels[i];
		if (!FUNC0(c) &&
		   (c->ic_flags & flags) == flags)
			return c;
	}
	FUNC2(ic, "HELP, no channel located to switch to!\n");
	return NULL;
}