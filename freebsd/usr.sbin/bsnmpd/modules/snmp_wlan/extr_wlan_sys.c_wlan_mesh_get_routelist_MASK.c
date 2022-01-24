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
struct wlan_mesh_route {int /*<<< orphan*/  mroute_status; int /*<<< orphan*/  imroute; } ;
struct wlan_iface {int /*<<< orphan*/  wname; } ;
struct ieee80211req_mesh_route {int /*<<< orphan*/  imr_dest; } ;
typedef  int /*<<< orphan*/  routes ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_MESH_RTCMD ; 
 int IEEE80211_MESH_RTCMD_LIST ; 
 int /*<<< orphan*/  RowStatus_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ieee80211req_mesh_route*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct ieee80211req_mesh_route*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wlan_iface*,struct wlan_mesh_route*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_mesh_route*) ; 
 struct wlan_mesh_route* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct wlan_iface *wif)
{
	int i, nroutes, val = IEEE80211_MESH_RTCMD_LIST;
	size_t argsize;
	struct ieee80211req_mesh_route routes[128];
	struct ieee80211req_mesh_route *rt;
	struct wlan_mesh_route *wmr;

	argsize = sizeof(routes);
	if (FUNC1(wif->wname, IEEE80211_IOC_MESH_RTCMD, &val, routes,
	    &argsize, 0) < 0) /* XXX: ENOMEM? */
		return (-1);

	nroutes = argsize / sizeof(*rt);
	for (i = 0; i < nroutes; i++) {
		rt = routes + i;
		if ((wmr = FUNC4(rt->imr_dest)) == NULL)
			return (-1);
		FUNC0(&wmr->imroute, rt, sizeof(*rt));
		wmr->mroute_status = RowStatus_active;
		if (FUNC2(wif, wmr) < 0)
			FUNC3(wmr);
	}

	return (0);
}