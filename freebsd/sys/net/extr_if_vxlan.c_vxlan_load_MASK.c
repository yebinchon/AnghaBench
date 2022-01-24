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

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_clone_create ; 
 int /*<<< orphan*/  vxlan_clone_destroy ; 
 int /*<<< orphan*/  vxlan_cloner ; 
 int /*<<< orphan*/  vxlan_ifdetach_event ; 
 int /*<<< orphan*/  vxlan_ifdetach_event_tag ; 
 int /*<<< orphan*/  vxlan_list_mtx ; 
 int /*<<< orphan*/  vxlan_name ; 
 int /*<<< orphan*/  vxlan_socket_list ; 

__attribute__((used)) static void
FUNC4(void)
{

	FUNC3(&vxlan_list_mtx, "vxlan list", NULL, MTX_DEF);
	FUNC1(&vxlan_socket_list);
	vxlan_ifdetach_event_tag = FUNC0(ifnet_departure_event,
	    vxlan_ifdetach_event, NULL, EVENTHANDLER_PRI_ANY);
	vxlan_cloner = FUNC2(vxlan_name, vxlan_clone_create,
	    vxlan_clone_destroy, 0);
}