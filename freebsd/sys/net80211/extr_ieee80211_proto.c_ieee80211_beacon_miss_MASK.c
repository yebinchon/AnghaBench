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
struct ieee80211com {int ic_flags; int /*<<< orphan*/  ic_bmiss_task; } ;

/* Variables and functions */
 int IEEE80211_F_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,int /*<<< orphan*/ *) ; 

void
FUNC3(struct ieee80211com *ic)
{
	FUNC0(ic);
	if ((ic->ic_flags & IEEE80211_F_SCAN) == 0) {
		/* Process in a taskq, the handler may reenter the driver */
		FUNC2(ic, &ic->ic_bmiss_task);
	}
	FUNC1(ic);
}