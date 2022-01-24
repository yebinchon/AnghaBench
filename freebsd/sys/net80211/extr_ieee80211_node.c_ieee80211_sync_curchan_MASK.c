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
struct ieee80211com {int /*<<< orphan*/  (* ic_set_channel ) (struct ieee80211com*) ;struct ieee80211_channel* ic_curchan; int /*<<< orphan*/  ic_rt; int /*<<< orphan*/  ic_curmode; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_channel*) ; 
 struct ieee80211_channel* FUNC6 (struct ieee80211com*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 struct ieee80211_channel* FUNC8 (struct ieee80211com*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*) ; 

void
FUNC10(struct ieee80211com *ic)
{
	struct ieee80211_channel *c;

	c = FUNC6(ic, ic->ic_curchan, FUNC2(ic));
	c = FUNC8(ic, c, FUNC3(ic));

	if (c != ic->ic_curchan) {
		ic->ic_curchan = c;
		ic->ic_curmode = FUNC4(ic->ic_curchan);
		ic->ic_rt = FUNC5(ic->ic_curchan);
		FUNC1(ic);
		ic->ic_set_channel(ic);
		FUNC7(ic);
		FUNC0(ic);
	}
}