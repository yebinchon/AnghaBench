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
struct ieee80211com {scalar_t__ ic_opmode; int ic_caps; int /*<<< orphan*/  ic_flags; int /*<<< orphan*/  ic_curchan; scalar_t__ ic_longslotsta; scalar_t__ ic_nonerpsta; } ;

/* Variables and functions */
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int /*<<< orphan*/  IEEE80211_F_SHPREAMBLE ; 
 int /*<<< orphan*/  IEEE80211_F_USEBARKER ; 
 int /*<<< orphan*/  IEEE80211_F_USEPROT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int) ; 

void
FUNC4(struct ieee80211com *ic)
{
	ic->ic_flags &= ~IEEE80211_F_USEPROT;
	ic->ic_nonerpsta = 0;
	ic->ic_longslotsta = 0;
	/*
	 * Short slot time is enabled only when operating in 11g
	 * and not in an IBSS.  We must also honor whether or not
	 * the driver is capable of doing it.
	 */
	FUNC3(ic,
		FUNC0(ic->ic_curchan) ||
		FUNC2(ic->ic_curchan) ||
		(FUNC1(ic->ic_curchan) &&
		ic->ic_opmode == IEEE80211_M_HOSTAP &&
		(ic->ic_caps & IEEE80211_C_SHSLOT)));
	/*
	 * Set short preamble and ERP barker-preamble flags.
	 */
	if (FUNC0(ic->ic_curchan) ||
	    (ic->ic_caps & IEEE80211_C_SHPREAMBLE)) {
		ic->ic_flags |= IEEE80211_F_SHPREAMBLE;
		ic->ic_flags &= ~IEEE80211_F_USEBARKER;
	} else {
		ic->ic_flags &= ~IEEE80211_F_SHPREAMBLE;
		ic->ic_flags |= IEEE80211_F_USEBARKER;
	}
}