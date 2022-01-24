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
typedef  int /*<<< orphan*/  uint16_t ;
struct ieee80211com {int /*<<< orphan*/  ic_stageq; } ;
struct ieee80211_node {scalar_t__ ni_mlstate; int /*<<< orphan*/  ni_macaddr; int /*<<< orphan*/  ni_mltimer; int /*<<< orphan*/  ni_mllid; int /*<<< orphan*/  ni_mlpid; struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ACTION_CAT_SELF_PROT ; 
 int /*<<< orphan*/  IEEE80211_ACTION_MESHPEERING_CLOSE ; 
 scalar_t__ IEEE80211_NODE_MESH_ESTABLISHED ; 
 int /*<<< orphan*/  IEEE80211_REASON_PEER_LINK_CANCELED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg, struct ieee80211_node *ni)
{
	struct ieee80211com *ic = ni->ni_ic;
	uint16_t args[3];

	if (ni->ni_mlstate == IEEE80211_NODE_MESH_ESTABLISHED) {
		args[0] = ni->ni_mlpid;
		args[1] = ni->ni_mllid;
		args[2] = IEEE80211_REASON_PEER_LINK_CANCELED;
		FUNC3(ni,
		    IEEE80211_ACTION_CAT_SELF_PROT,
		    IEEE80211_ACTION_MESHPEERING_CLOSE,
		    args);
	}
	FUNC0(&ni->ni_mltimer);
	/* XXX belongs in hwmp */
	FUNC1(&ic->ic_stageq,
	   (void *)(uintptr_t) FUNC2(ic, ni->ni_macaddr));
}