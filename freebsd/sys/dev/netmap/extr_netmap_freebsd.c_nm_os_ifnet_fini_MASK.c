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
 int /*<<< orphan*/  nm_ifnet_ah_tag ; 
 int /*<<< orphan*/  nm_ifnet_dh_tag ; 

void
FUNC1(void)
{
	FUNC0(ifnet_arrival_event,
			nm_ifnet_ah_tag);
	FUNC0(ifnet_departure_event,
			nm_ifnet_dh_tag);
}