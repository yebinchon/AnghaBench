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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vxlan_cloner ; 
 int /*<<< orphan*/  vxlan_ifdetach_event_tag ; 
 int /*<<< orphan*/  vxlan_list_mtx ; 
 int /*<<< orphan*/  vxlan_socket_list ; 

__attribute__((used)) static void
FUNC5(void)
{

	FUNC0(ifnet_departure_event,
	    vxlan_ifdetach_event_tag);
	FUNC3(vxlan_cloner);
	FUNC4(&vxlan_list_mtx);
	FUNC2(FUNC1(&vxlan_socket_list));
}