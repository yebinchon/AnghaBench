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
struct ieee80211_node {int ni_mlstate; int /*<<< orphan*/  ni_mlhtimer; int /*<<< orphan*/  ni_mlhcnt; int /*<<< orphan*/  ni_mlpid; int /*<<< orphan*/  ni_mlrcnt; int /*<<< orphan*/  ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ACTION_CAT_SELF_PROT ; 
 int /*<<< orphan*/  IEEE80211_ACTION_MESHPEERING_CLOSE ; 
 int /*<<< orphan*/  IEEE80211_ACTION_MESHPEERING_OPEN ; 
 int /*<<< orphan*/  IEEE80211_MSG_MESH ; 
#define  IEEE80211_NODE_MESH_CONFIRMRCV 133 
#define  IEEE80211_NODE_MESH_ESTABLISHED 132 
#define  IEEE80211_NODE_MESH_HOLDING 131 
#define  IEEE80211_NODE_MESH_IDLE 130 
#define  IEEE80211_NODE_MESH_OPENRCV 129 
#define  IEEE80211_NODE_MESH_OPENSNT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_node*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_REASON_MESH_CONFIRM_TIMEOUT ; 
 int /*<<< orphan*/  IEEE80211_REASON_MESH_MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_node*) ; 
 int /*<<< orphan*/  ieee80211_mesh_backofftimeout ; 
 int /*<<< orphan*/  ieee80211_mesh_maxholding ; 
 int /*<<< orphan*/  ieee80211_mesh_maxretries ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*,int const) ; 
 int /*<<< orphan*/  mesh_peer_backoff_cb ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct ieee80211_node *ni = (struct ieee80211_node *)arg;
	uint16_t args[3];

	FUNC0(ni->ni_vap, IEEE80211_MSG_MESH,
	    ni, "mesh link timeout, state %d, retry counter %d",
	    ni->ni_mlstate, ni->ni_mlrcnt);
	
	switch (ni->ni_mlstate) {
	case IEEE80211_NODE_MESH_IDLE:
	case IEEE80211_NODE_MESH_ESTABLISHED:
		break;
	case IEEE80211_NODE_MESH_OPENSNT:
	case IEEE80211_NODE_MESH_OPENRCV:
		if (ni->ni_mlrcnt == ieee80211_mesh_maxretries) {
			args[0] = ni->ni_mlpid;
			args[2] = IEEE80211_REASON_MESH_MAX_RETRIES;
			FUNC2(ni,
			    IEEE80211_ACTION_CAT_SELF_PROT,
			    IEEE80211_ACTION_MESHPEERING_CLOSE, args);
			ni->ni_mlrcnt = 0;
			FUNC3(ni, IEEE80211_NODE_MESH_HOLDING);
			FUNC5(ni);
		} else {
			args[0] = ni->ni_mlpid;
			FUNC2(ni,
			    IEEE80211_ACTION_CAT_SELF_PROT,
			    IEEE80211_ACTION_MESHPEERING_OPEN, args);
			ni->ni_mlrcnt++;
			FUNC4(ni);
		}
		break;
	case IEEE80211_NODE_MESH_CONFIRMRCV:
		args[0] = ni->ni_mlpid;
		args[2] = IEEE80211_REASON_MESH_CONFIRM_TIMEOUT;
		FUNC2(ni,
		    IEEE80211_ACTION_CAT_SELF_PROT,
		    IEEE80211_ACTION_MESHPEERING_CLOSE, args);
		FUNC3(ni, IEEE80211_NODE_MESH_HOLDING);
		FUNC5(ni);
		break;
	case IEEE80211_NODE_MESH_HOLDING:
		ni->ni_mlhcnt++;
		if (ni->ni_mlhcnt >= ieee80211_mesh_maxholding)
			FUNC1(&ni->ni_mlhtimer,
			    ieee80211_mesh_backofftimeout,
			    mesh_peer_backoff_cb, ni);
		FUNC3(ni, IEEE80211_NODE_MESH_IDLE);
		break;
	}
}