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
struct ifnet {int if_drv_flags; } ;
struct ieee80211vap {struct ifnet* iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_name; int /*<<< orphan*/  ic_parent_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int IEEE80211_MSG_DEBUG ; 
 int IEEE80211_MSG_STATE ; 
 int /*<<< orphan*/  IEEE80211_S_INIT ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int /*<<< orphan*/ *) ; 

void
FUNC4(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ifnet *ifp = vap->iv_ifp;

	FUNC1(ic);

	FUNC0(vap, IEEE80211_MSG_STATE | IEEE80211_MSG_DEBUG,
	    "stop running, %d vaps running\n", ic->ic_nrunning);

	FUNC2(vap, IEEE80211_S_INIT, -1);
	if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;	/* mark us stopped */
		if (--ic->ic_nrunning == 0) {
			FUNC0(vap,
			    IEEE80211_MSG_STATE | IEEE80211_MSG_DEBUG,
			    "down parent %s\n", ic->ic_name);
			FUNC3(ic, &ic->ic_parent_task);
		}
	}
}