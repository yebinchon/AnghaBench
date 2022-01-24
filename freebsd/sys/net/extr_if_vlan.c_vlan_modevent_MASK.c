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
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ifdetach_tag ; 
 int /*<<< orphan*/  iflladdr_event ; 
 int /*<<< orphan*/ * iflladdr_tag ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  vlan_clone_create ; 
 int /*<<< orphan*/  vlan_clone_destroy ; 
 int /*<<< orphan*/  vlan_clone_match ; 
 int /*<<< orphan*/  vlan_cloner ; 
 int /*<<< orphan*/ * vlan_cookie ; 
 int /*<<< orphan*/ * vlan_cookie_p ; 
 int /*<<< orphan*/ * vlan_devat ; 
 int /*<<< orphan*/ * vlan_devat_p ; 
 int /*<<< orphan*/  vlan_ifdetach ; 
 int /*<<< orphan*/  vlan_iflladdr ; 
 int /*<<< orphan*/ * vlan_input ; 
 int /*<<< orphan*/ * vlan_input_p ; 
 int /*<<< orphan*/ * vlan_link_state ; 
 int /*<<< orphan*/ * vlan_link_state_p ; 
 int /*<<< orphan*/  vlan_pcp ; 
 int /*<<< orphan*/  vlan_pcp_p ; 
 int /*<<< orphan*/ * vlan_setcookie ; 
 int /*<<< orphan*/ * vlan_setcookie_p ; 
 int /*<<< orphan*/ * vlan_tag ; 
 int /*<<< orphan*/ * vlan_tag_p ; 
 int /*<<< orphan*/ * vlan_trunk_cap_p ; 
 int /*<<< orphan*/ * vlan_trunk_capabilities ; 
 int /*<<< orphan*/ * vlan_trunkdev ; 
 int /*<<< orphan*/ * vlan_trunkdev_p ; 
 int /*<<< orphan*/  vlanname ; 

__attribute__((used)) static int
FUNC7(module_t mod, int type, void *data)
{

	switch (type) {
	case MOD_LOAD:
		ifdetach_tag = FUNC1(ifnet_departure_event,
		    vlan_ifdetach, NULL, EVENTHANDLER_PRI_ANY);
		if (ifdetach_tag == NULL)
			return (ENOMEM);
		iflladdr_tag = FUNC1(iflladdr_event,
		    vlan_iflladdr, NULL, EVENTHANDLER_PRI_ANY);
		if (iflladdr_tag == NULL)
			return (ENOMEM);
		FUNC3();
		vlan_input_p = vlan_input;
		vlan_link_state_p = vlan_link_state;
		vlan_trunk_cap_p = vlan_trunk_capabilities;
		vlan_trunkdev_p = vlan_trunkdev;
		vlan_cookie_p = vlan_cookie;
		vlan_setcookie_p = vlan_setcookie;
		vlan_tag_p = vlan_tag;
		vlan_pcp_p = vlan_pcp;
		vlan_devat_p = vlan_devat;
#ifndef VIMAGE
		vlan_cloner = FUNC4(vlanname, 0, vlan_clone_match,
		    vlan_clone_create, vlan_clone_destroy);
#endif
		if (bootverbose)
			FUNC6("vlan: initialized, using "
#ifdef VLAN_ARRAY
			       "full-size arrays"
#else
			       "hash tables with chaining"
#endif
			
			       "\n");
		break;
	case MOD_UNLOAD:
#ifndef VIMAGE
		FUNC5(vlan_cloner);
#endif
		FUNC0(ifnet_departure_event, ifdetach_tag);
		FUNC0(iflladdr_event, iflladdr_tag);
		vlan_input_p = NULL;
		vlan_link_state_p = NULL;
		vlan_trunk_cap_p = NULL;
		vlan_trunkdev_p = NULL;
		vlan_tag_p = NULL;
		vlan_cookie_p = NULL;
		vlan_setcookie_p = NULL;
		vlan_devat_p = NULL;
		FUNC2();
		if (bootverbose)
			FUNC6("vlan: unloaded\n");
		break;
	default:
		return (EOPNOTSUPP);
	}
	return (0);
}