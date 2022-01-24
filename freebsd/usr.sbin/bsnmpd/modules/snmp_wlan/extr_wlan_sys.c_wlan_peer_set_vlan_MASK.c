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
struct wlan_peer {int vlan; int /*<<< orphan*/  pmac; } ;
struct wlan_iface {int /*<<< orphan*/  wname; } ;
struct ieee80211req_sta_vlan {int sv_vlan; int /*<<< orphan*/  sv_macaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_IOC_STA_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct ieee80211req_sta_vlan*,size_t*,int) ; 

int
FUNC2(struct wlan_iface *wif, struct wlan_peer *wip, int vlan)
{
	int val = 0;
	size_t argsize;
	struct ieee80211req_sta_vlan vreq;

	FUNC0(vreq.sv_macaddr, wip->pmac, IEEE80211_ADDR_LEN);
	vreq.sv_vlan = vlan;
	argsize = sizeof(struct ieee80211req_sta_vlan);

	if (FUNC1(wif->wname, IEEE80211_IOC_STA_VLAN,
	    &val, &vreq, &argsize, 1) < 0)
		return (-1);

	wip->vlan = vlan;

	return (0);
}