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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arp_iflladdr ; 
 int /*<<< orphan*/  arp_nh ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  iflladdr_event ; 
 int /*<<< orphan*/  iflladdr_tag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void)
{

	if (FUNC1(curvnet)) {
		FUNC2(&arp_nh);
		iflladdr_tag = FUNC0(iflladdr_event,
		    arp_iflladdr, NULL, EVENTHANDLER_PRI_ANY);
	}
#ifdef VIMAGE
	else
		netisr_register_vnet(&arp_nh);
#endif
}