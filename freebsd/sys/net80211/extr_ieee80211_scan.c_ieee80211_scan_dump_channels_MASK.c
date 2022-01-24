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
struct ieee80211_scan_state {int ss_next; int ss_last; struct ieee80211_channel** ss_chans; struct ieee80211com* ss_ic; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211com*,struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,int /*<<< orphan*/ ) ; 

void
FUNC3(const struct ieee80211_scan_state *ss)
{
	struct ieee80211com *ic = ss->ss_ic;
	const char *sep;
	int i;

	sep = "";
	for (i = ss->ss_next; i < ss->ss_last; i++) {
		const struct ieee80211_channel *c = ss->ss_chans[i];

		FUNC2("%s%u%c", sep, FUNC0(ic, c),
		    FUNC1(c));
		sep = ", ";
	}
}