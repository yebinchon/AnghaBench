#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ieee80211vap {scalar_t__ iv_opmode; int /*<<< orphan*/ * iv_nw_keys; TYPE_1__* iv_ic; int /*<<< orphan*/  iv_bss; } ;
struct ieee80211req_del_key {int idk_keyix; int /*<<< orphan*/  idk_macaddr; } ;
struct ieee80211req {int i_len; int /*<<< orphan*/  i_data; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_bssid; } ;
typedef  int /*<<< orphan*/  dk ;
struct TYPE_2__ {int /*<<< orphan*/  ic_sta; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_KEYIX_NONE ; 
 scalar_t__ IEEE80211_M_STA ; 
 int IEEE80211_WEP_NKID ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ieee80211req_del_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,int /*<<< orphan*/ *) ; 
 struct ieee80211_node* FUNC3 (int /*<<< orphan*/ *,struct ieee80211vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
	struct ieee80211req_del_key dk;
	int kid, error;

	if (ireq->i_len != sizeof(dk))
		return EINVAL;
	error = FUNC1(ireq->i_data, &dk, sizeof(dk));
	if (error)
		return error;
	kid = dk.idk_keyix;
	/* XXX uint8_t -> uint16_t */
	if (dk.idk_keyix == (uint8_t) IEEE80211_KEYIX_NONE) {
		struct ieee80211_node *ni;

		if (vap->iv_opmode == IEEE80211_M_STA) {
			ni = FUNC6(vap->iv_bss);
			if (!FUNC0(dk.idk_macaddr, ni->ni_bssid)) {
				FUNC4(ni);
				return EADDRNOTAVAIL;
			}
		} else {
			ni = FUNC3(&vap->iv_ic->ic_sta, vap,
				dk.idk_macaddr);
			if (ni == NULL)
				return ENOENT;
		}
		/* XXX error return */
		FUNC5(ni);
		FUNC4(ni);
	} else {
		if (kid >= IEEE80211_WEP_NKID)
			return EINVAL;
		/* XXX error return */
		FUNC2(vap, &vap->iv_nw_keys[kid]);
	}
	return 0;
}