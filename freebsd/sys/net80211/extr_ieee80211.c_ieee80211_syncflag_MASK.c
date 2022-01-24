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
struct ieee80211vap {int iv_flags; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,int) ; 

void
FUNC3(struct ieee80211vap *vap, int flag)
{
	struct ieee80211com *ic = vap->iv_ic;

	FUNC0(ic);
	if (flag < 0) {
		flag = -flag;
		vap->iv_flags &= ~flag;
	} else
		vap->iv_flags |= flag;
	FUNC2(ic, flag);
	FUNC1(ic);
}