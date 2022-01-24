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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ieee80211_node {int ni_mlstate; int /*<<< orphan*/  ni_mllid; int /*<<< orphan*/  ni_mlpid; int /*<<< orphan*/  ni_vap; } ;
struct ieee80211_meshpeer_ie {int dummy; } ;
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ACTION_CAT_SELF_PROT ; 
 int /*<<< orphan*/  IEEE80211_ACTION_MESHPEERING_CLOSE ; 
 int IEEE80211_MSG_ACTION ; 
 int IEEE80211_MSG_MESH ; 
#define  IEEE80211_NODE_MESH_CONFIRMRCV 133 
#define  IEEE80211_NODE_MESH_ESTABLISHED 132 
#define  IEEE80211_NODE_MESH_HOLDING 131 
#define  IEEE80211_NODE_MESH_IDLE 130 
#define  IEEE80211_NODE_MESH_OPENRCV 129 
#define  IEEE80211_NODE_MESH_OPENSNT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ieee80211_node*,char*,char*) ; 
 int /*<<< orphan*/  IEEE80211_REASON_MESH_CLOSE_RCVD ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,int const) ; 
 struct ieee80211_meshpeer_ie* FUNC3 (struct ieee80211_node*,struct ieee80211_frame const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct ieee80211_meshpeer_ie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_node*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_node *ni,
	const struct ieee80211_frame *wh,
	const uint8_t *frm, const uint8_t *efrm)
{
	struct ieee80211_meshpeer_ie ie;
	const struct ieee80211_meshpeer_ie *meshpeer;
	uint16_t args[3];

	/* +2 for action + code */
	meshpeer = FUNC3(ni, wh, frm+2, efrm, &ie,
	    IEEE80211_ACTION_MESHPEERING_CLOSE);
	if (meshpeer == NULL) {
		return 0;
	}

	/*
	 * XXX: check reason code, for example we could receive
	 * IEEE80211_REASON_MESH_MAX_PEERS then we should not attempt
	 * to peer again.
	 */

	FUNC0(ni->ni_vap, IEEE80211_MSG_ACTION | IEEE80211_MSG_MESH,
	    ni, "%s", "recv PEER CLOSE");

	switch (ni->ni_mlstate) {
	case IEEE80211_NODE_MESH_IDLE:
		/* ignore */
		break;
	case IEEE80211_NODE_MESH_OPENRCV:
	case IEEE80211_NODE_MESH_OPENSNT:
	case IEEE80211_NODE_MESH_CONFIRMRCV:
	case IEEE80211_NODE_MESH_ESTABLISHED:
		args[0] = ni->ni_mlpid;
		args[1] = ni->ni_mllid;
		args[2] = IEEE80211_REASON_MESH_CLOSE_RCVD;
		FUNC1(ni,
		    IEEE80211_ACTION_CAT_SELF_PROT,
		    IEEE80211_ACTION_MESHPEERING_CLOSE,
		    args);
		FUNC2(ni, IEEE80211_NODE_MESH_HOLDING);
		FUNC4(ni);
		break;
	case IEEE80211_NODE_MESH_HOLDING:
		FUNC2(ni, IEEE80211_NODE_MESH_IDLE);
		FUNC5(ni);
		break;
	}
	return 0;
}