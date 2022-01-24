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
typedef  int /*<<< orphan*/  ieee80211_send_action_func ;

/* Variables and functions */
 int EINVAL ; 
#define  IEEE80211_ACTION_CAT_BA 133 
#define  IEEE80211_ACTION_CAT_HT 132 
#define  IEEE80211_ACTION_CAT_MESH 131 
#define  IEEE80211_ACTION_CAT_SELF_PROT 130 
#define  IEEE80211_ACTION_CAT_VENDOR 129 
#define  IEEE80211_ACTION_CAT_VHT 128 
 int /*<<< orphan*/ ** ba_send_action ; 
 int /*<<< orphan*/ ** ht_send_action ; 
 int /*<<< orphan*/ ** meshaction_send_action ; 
 int /*<<< orphan*/ ** meshpl_send_action ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** vendor_send_action ; 
 int /*<<< orphan*/ ** vht_send_action ; 

int
FUNC1(int cat, int act, ieee80211_send_action_func *f)
{
	switch (cat) {
	case IEEE80211_ACTION_CAT_BA:
		if (act >= FUNC0(ba_send_action))
			break;
		ba_send_action[act] = f;
		return 0;
	case IEEE80211_ACTION_CAT_HT:
		if (act >= FUNC0(ht_send_action))
			break;
		ht_send_action[act] = f;
		return 0;
	case IEEE80211_ACTION_CAT_SELF_PROT:
		if (act >= FUNC0(meshpl_send_action))
			break;
		meshpl_send_action[act] = f;
		return 0;
	case IEEE80211_ACTION_CAT_MESH:
		if (act >= FUNC0(meshaction_send_action))
			break;
		meshaction_send_action[act] = f;
		return 0;
	case IEEE80211_ACTION_CAT_VENDOR:
		if (act >= FUNC0(vendor_send_action))
			break;
		vendor_send_action[act] = f;
		return 0;
	case IEEE80211_ACTION_CAT_VHT:
		if (act >= FUNC0(vht_send_action))
			break;
		vht_send_action[act] = f;
		return 0;
	}
	return EINVAL;
}