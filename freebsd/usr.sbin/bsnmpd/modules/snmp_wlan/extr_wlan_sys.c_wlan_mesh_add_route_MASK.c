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
struct TYPE_2__ {int /*<<< orphan*/  imr_dest; } ;
struct wlan_mesh_route {int /*<<< orphan*/  mroute_status; TYPE_1__ imroute; } ;
struct wlan_iface {int /*<<< orphan*/  wname; } ;

/* Variables and functions */
 size_t IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_IOC_MESH_RTCMD ; 
 int IEEE80211_MESH_RTCMD_ADD ; 
 int /*<<< orphan*/  RowStatus_active ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,size_t*,int) ; 

int
FUNC1(struct wlan_iface *wif, struct wlan_mesh_route *wmr)
{
	int val = IEEE80211_MESH_RTCMD_ADD;
	size_t argsize = IEEE80211_ADDR_LEN;

	if (FUNC0(wif->wname, IEEE80211_IOC_MESH_RTCMD, &val,
	    wmr->imroute.imr_dest, &argsize, 1) < 0)
		return (-1);

	wmr->mroute_status = RowStatus_active;

	return (0);
}