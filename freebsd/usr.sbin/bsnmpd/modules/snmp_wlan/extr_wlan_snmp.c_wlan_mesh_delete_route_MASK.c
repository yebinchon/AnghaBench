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
struct wlan_mesh_route {scalar_t__ mroute_status; } ;
struct wlan_iface {int /*<<< orphan*/  mesh_routelist; } ;

/* Variables and functions */
 scalar_t__ RowStatus_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct wlan_mesh_route*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_mesh_route*) ; 
 scalar_t__ FUNC2 (struct wlan_iface*,struct wlan_mesh_route*) ; 
 int /*<<< orphan*/  wlan_mesh_route ; 
 int /*<<< orphan*/  wr ; 

__attribute__((used)) static int
FUNC3(struct wlan_iface *wif, struct wlan_mesh_route *wmr)
{
	if (wmr->mroute_status == RowStatus_active &&
	    FUNC2(wif, wmr) < 0)
		return (-1);

	FUNC0(&wif->mesh_routelist, wmr, wlan_mesh_route, wr);
	FUNC1(wmr);

	return (0);
}