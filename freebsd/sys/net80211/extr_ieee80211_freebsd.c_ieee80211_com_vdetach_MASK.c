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
struct ieee80211vap {int /*<<< orphan*/  iv_com_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_COM_DETACHED ; 
 int /*<<< orphan*/  IEEE80211_COM_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5(struct ieee80211vap *vap)
{
	int sleep_time;

	sleep_time = FUNC3(250);
	FUNC2(&vap->iv_com_state, IEEE80211_COM_DETACHED);
	while (FUNC0(FUNC1(&vap->iv_com_state), IEEE80211_COM_REF) != 0)
		FUNC4("comref", sleep_time);
}