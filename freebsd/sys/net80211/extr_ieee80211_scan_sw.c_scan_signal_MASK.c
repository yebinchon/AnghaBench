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
struct ieee80211_scan_state {struct ieee80211com* ss_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_scan_state*,int) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_scan_state *ss, int iflags)
{
	struct ieee80211com *ic = ss->ss_ic;

	FUNC2(ic);

	FUNC0(ic);
	FUNC3(ss, iflags);
	FUNC1(ic);
}