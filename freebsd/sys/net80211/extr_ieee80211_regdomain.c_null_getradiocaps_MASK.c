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
struct ieee80211com {int ic_nchans; int /*<<< orphan*/  ic_channels; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct ieee80211com *ic, int maxchan,
	int *n, struct ieee80211_channel *c)
{
	/* just feed back the current channel list */
	if (maxchan > ic->ic_nchans)
		maxchan = ic->ic_nchans;
	FUNC0(c, ic->ic_channels, maxchan*sizeof(struct ieee80211_channel));
	*n = maxchan;
}