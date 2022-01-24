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
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifnet_arrival_event ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 void* ipfw_ifattach_event ; 
 void* ipfw_ifdetach_event ; 
 int /*<<< orphan*/  ipfw_kifhandler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_vnets ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  vnet_mtx ; 

__attribute__((used)) static void
FUNC4()
{
	int create;

	create = 0;

	FUNC1(&vnet_mtx);
	if (num_vnets == 0)
		create = 1;
	num_vnets++;
	FUNC2(&vnet_mtx);

	if (create == 0)
		return;

	FUNC3("IPFW: starting up interface tracker\n");

	ipfw_ifdetach_event = FUNC0(
	    ifnet_departure_event, ipfw_kifhandler, NULL,
	    EVENTHANDLER_PRI_ANY);
	ipfw_ifattach_event = FUNC0(
	    ifnet_arrival_event, ipfw_kifhandler, (void*)((uintptr_t)1),
	    EVENTHANDLER_PRI_ANY);
}