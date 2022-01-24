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
struct scan_state {int ss_iflags; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scan_state {int ss_flags; struct ieee80211vap* ss_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int IEEE80211_F_SCAN ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  IEEE80211_MSG_SCAN ; 
 int IEEE80211_SCAN_ACTIVE ; 
 int IEEE80211_SCAN_NOPICK ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int ISCAN_CANCEL ; 
 int ISCAN_PAUSE ; 
 struct scan_state* FUNC3 (struct ieee80211_scan_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_scan_state*,int) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211vap *vap, int any, const char *func)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_scan_state *ss = ic->ic_scan;
	struct scan_state *ss_priv = FUNC3(ss);
	int signal;

	FUNC1(ic);
	signal = any ? ISCAN_PAUSE : ISCAN_CANCEL;
	if ((ic->ic_flags & IEEE80211_F_SCAN) &&
	    (any || ss->ss_vap == vap) &&
	    (ss_priv->ss_iflags & signal) == 0) {
		FUNC0(vap, IEEE80211_MSG_SCAN,
		    "%s: %s %s scan\n", func,
		    any ? "pause" : "cancel",
		    ss->ss_flags & IEEE80211_SCAN_ACTIVE ?
			"active" : "passive");

		/* clear bg scan NOPICK */
		ss->ss_flags &= ~IEEE80211_SCAN_NOPICK;
		/* mark request and wake up the scan task */
		FUNC4(ss, signal);
	} else {
		FUNC0(vap, IEEE80211_MSG_SCAN,
		    "%s: called; F_SCAN=%d, vap=%s, signal=%d\n",
			func,
			!! (ic->ic_flags & IEEE80211_F_SCAN),
			(ss->ss_vap == vap ? "match" : "nomatch"),
			!! (ss_priv->ss_iflags & signal));
	}
	FUNC2(ic);
}