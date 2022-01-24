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
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  group_attach_event ; 
 int /*<<< orphan*/  group_change_event ; 
 int /*<<< orphan*/  group_detach_event ; 
 int /*<<< orphan*/  ifaddr_event ; 
 int /*<<< orphan*/  ifnet_arrival_event ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 void* pfi_attach_cookie ; 
 void* pfi_attach_group_cookie ; 
 int /*<<< orphan*/  pfi_attach_group_event ; 
 int /*<<< orphan*/  pfi_attach_ifnet_event ; 
 void* pfi_change_group_cookie ; 
 int /*<<< orphan*/  pfi_change_group_event ; 
 void* pfi_detach_cookie ; 
 void* pfi_detach_group_cookie ; 
 int /*<<< orphan*/  pfi_detach_group_event ; 
 int /*<<< orphan*/  pfi_detach_ifnet_event ; 
 int /*<<< orphan*/  pfi_ifaddr_event ; 
 void* pfi_ifaddr_event_cookie ; 

void
FUNC1(void)
{

	pfi_attach_cookie = FUNC0(ifnet_arrival_event,
	    pfi_attach_ifnet_event, NULL, EVENTHANDLER_PRI_ANY);
	pfi_detach_cookie = FUNC0(ifnet_departure_event,
	    pfi_detach_ifnet_event, NULL, EVENTHANDLER_PRI_ANY);
	pfi_attach_group_cookie = FUNC0(group_attach_event,
	    pfi_attach_group_event, NULL, EVENTHANDLER_PRI_ANY);
	pfi_change_group_cookie = FUNC0(group_change_event,
	    pfi_change_group_event, NULL, EVENTHANDLER_PRI_ANY);
	pfi_detach_group_cookie = FUNC0(group_detach_event,
	    pfi_detach_group_event, NULL, EVENTHANDLER_PRI_ANY);
	pfi_ifaddr_event_cookie = FUNC0(ifaddr_event,
	    pfi_ifaddr_event, NULL, EVENTHANDLER_PRI_ANY);
}