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
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int FUNC2 (struct ieee80211vap*,int,int) ; 

int
FUNC3(struct ieee80211vap *vap,
	enum ieee80211_state nstate, int arg)
{
	struct ieee80211com *ic = vap->iv_ic;
	int rc;

	FUNC0(ic);
	rc = FUNC2(vap, nstate, arg);
	FUNC1(ic);
	return rc;
}