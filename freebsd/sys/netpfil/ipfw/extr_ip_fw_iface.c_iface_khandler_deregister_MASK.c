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
 int /*<<< orphan*/  ifnet_arrival_event ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 int /*<<< orphan*/  ipfw_ifattach_event ; 
 int /*<<< orphan*/  ipfw_ifdetach_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int num_vnets ; 
 int /*<<< orphan*/  vnet_mtx ; 

__attribute__((used)) static void
FUNC3()
{
	int destroy;

	destroy = 0;
	FUNC1(&vnet_mtx);
	if (num_vnets == 1)
		destroy = 1;
	num_vnets--;
	FUNC2(&vnet_mtx);

	if (destroy == 0)
		return;

	FUNC0(ifnet_arrival_event,
	    ipfw_ifattach_event);
	FUNC0(ifnet_departure_event,
	    ipfw_ifdetach_event);
}