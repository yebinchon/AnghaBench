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
struct ifnet {int /*<<< orphan*/  if_vnet; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; struct ifnet* iv_ifp; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_macaddr; struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_MSG_NODE ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,int /*<<< orphan*/ ,struct ieee80211_node*,char*,char*) ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  RTM_IEEE80211_DISASSOC ; 
 int /*<<< orphan*/  RTM_IEEE80211_LEAVE ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ieee80211_node *ni)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct ifnet *ifp = vap->iv_ifp;

	FUNC1(ifp->if_vnet);
	FUNC2(vap, IEEE80211_MSG_NODE, ni, "%snode leave",
	    (ni == vap->iv_bss) ? "bss " : "");

	if (ni == vap->iv_bss) {
		FUNC5(ifp, RTM_IEEE80211_DISASSOC, NULL, 0);
		FUNC3(ifp, LINK_STATE_DOWN);
	} else {
		/* fire off wireless event station leaving */
		FUNC4(ifp, RTM_IEEE80211_LEAVE, ni->ni_macaddr);
	}
	FUNC0();
}