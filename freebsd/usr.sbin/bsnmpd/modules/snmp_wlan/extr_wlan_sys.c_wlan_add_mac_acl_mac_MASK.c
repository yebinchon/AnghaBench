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
struct wlan_mac_mac {struct ieee80211req_mlme* mac; int /*<<< orphan*/  mac_status; } ;
struct wlan_iface {scalar_t__ mac_policy; int /*<<< orphan*/  wname; } ;
struct ieee80211req_mlme {int /*<<< orphan*/  im_macaddr; int /*<<< orphan*/  im_reason; int /*<<< orphan*/  im_op; } ;
typedef  int /*<<< orphan*/  mlme ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 size_t IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_IOC_ADDMAC ; 
 int /*<<< orphan*/  IEEE80211_IOC_MLME ; 
 int /*<<< orphan*/  IEEE80211_MLME_DEAUTH ; 
 int /*<<< orphan*/  IEEE80211_REASON_AUTH_EXPIRE ; 
 int /*<<< orphan*/  RowStatus_active ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee80211req_mlme*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211req_mlme*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ wlanMACAccessControlPolicy_deny ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct ieee80211req_mlme*,size_t*,int) ; 

int
FUNC3(struct wlan_iface *wif, struct wlan_mac_mac *mmac)
{
	int val = 0;
	size_t argsize = IEEE80211_ADDR_LEN;
	struct ieee80211req_mlme mlme;

	if (FUNC2(wif->wname, IEEE80211_IOC_ADDMAC, &val,
	    mmac->mac, &argsize, 1) < 0)
		return (-1);

	mmac->mac_status = RowStatus_active;

	/* If policy is deny, try to kick the station just in case. */
	if (wif->mac_policy != wlanMACAccessControlPolicy_deny)
		return (0);

	FUNC1(&mlme, 0, sizeof(mlme));
	mlme.im_op = IEEE80211_MLME_DEAUTH;
	mlme.im_reason = IEEE80211_REASON_AUTH_EXPIRE;
	FUNC0(mlme.im_macaddr, mmac->mac, IEEE80211_ADDR_LEN);
	argsize = sizeof(struct ieee80211req_mlme);

	if (FUNC2(wif->wname, IEEE80211_IOC_MLME, &val, &mlme,
	    &argsize, 1) < 0 && errno != ENOENT)
		return (-1);

	return (0);
}