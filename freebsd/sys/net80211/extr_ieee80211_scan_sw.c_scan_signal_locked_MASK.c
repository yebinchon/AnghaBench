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
struct timeout_task {int dummy; } ;
struct scan_state {int ss_iflags; struct timeout_task ss_scan_curchan; } ;
struct ieee80211com {int /*<<< orphan*/  ic_tq; } ;
struct ieee80211_scan_state {struct ieee80211com* ss_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int ISCAN_RUNNING ; 
 struct scan_state* FUNC1 (struct ieee80211_scan_state*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct timeout_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timeout_task*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_scan_state *ss, int iflags)
{
	struct scan_state *ss_priv = FUNC1(ss);
	struct timeout_task *scan_task = &ss_priv->ss_scan_curchan;
	struct ieee80211com *ic = ss->ss_ic;

	FUNC0(ic);

	ss_priv->ss_iflags |= iflags;
	if (ss_priv->ss_iflags & ISCAN_RUNNING) {
		if (FUNC2(ic->ic_tq, scan_task, NULL) == 0)
			FUNC3(ic->ic_tq, scan_task, 0);
	}
}