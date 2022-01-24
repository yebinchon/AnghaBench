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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  bridge_detach_cookie ; 
 int /*<<< orphan*/ * bridge_dn_p ; 
 int /*<<< orphan*/ * bridge_dummynet ; 
 int /*<<< orphan*/  bridge_ifdetach ; 
 int /*<<< orphan*/  ifnet_departure_event ; 

__attribute__((used)) static int
FUNC2(module_t mod, int type, void *data)
{

	switch (type) {
	case MOD_LOAD:
		bridge_dn_p = bridge_dummynet;
		bridge_detach_cookie = FUNC1(
		    ifnet_departure_event, bridge_ifdetach, NULL,
		    EVENTHANDLER_PRI_ANY);
		break;
	case MOD_UNLOAD:
		FUNC0(ifnet_departure_event,
		    bridge_detach_cookie);
		bridge_dn_p = NULL;
		break;
	default:
		return (EOPNOTSUPP);
	}
	return (0);
}