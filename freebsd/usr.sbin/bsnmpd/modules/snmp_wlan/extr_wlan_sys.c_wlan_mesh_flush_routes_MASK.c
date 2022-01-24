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
struct wlan_iface {int /*<<< orphan*/  wname; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_MESH_RTCMD ; 
 int IEEE80211_MESH_RTCMD_FLUSH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,size_t*,int) ; 

int
FUNC1(struct wlan_iface *wif)
{
	int val = IEEE80211_MESH_RTCMD_FLUSH;
	size_t argsize = 0;

	if (FUNC0(wif->wname, IEEE80211_IOC_MESH_RTCMD, &val, NULL,
	    &argsize, 1) < 0)
		return (-1);

	return (0);
}