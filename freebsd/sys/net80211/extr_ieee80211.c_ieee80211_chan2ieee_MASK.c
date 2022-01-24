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
struct ieee80211_channel {int ic_ieee; } ;

/* Variables and functions */
 int IEEE80211_CHAN_ANY ; 
 struct ieee80211_channel const* IEEE80211_CHAN_ANYC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*,char*) ; 

int
FUNC1(struct ieee80211com *ic, const struct ieee80211_channel *c)
{
	if (c == NULL) {
		FUNC0(ic, "invalid channel (NULL)\n");
		return 0;		/* XXX */
	}
	return (c == IEEE80211_CHAN_ANYC ?  IEEE80211_CHAN_ANY : c->ic_ieee);
}