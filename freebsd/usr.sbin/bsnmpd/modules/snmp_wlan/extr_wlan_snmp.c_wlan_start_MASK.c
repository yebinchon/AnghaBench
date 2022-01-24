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
struct mibif {int dummy; } ;

/* Variables and functions */
 struct mibif* FUNC0 () ; 
 struct mibif* FUNC1 (struct mibif*) ; 
 int /*<<< orphan*/  oid_wlan ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_wlan ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mibif*) ; 
 int /*<<< orphan*/  wlan_data_timer ; 
 int /*<<< orphan*/  wlan_module ; 
 int /*<<< orphan*/  wlan_poll_ticks ; 
 int /*<<< orphan*/  wlan_update_data ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct mibif *ifp;

	reg_wlan = FUNC2(&oid_wlan,
	    "The MIB module for managing wireless networking.", wlan_module);

	 /* Add the existing wlan interfaces. */
	 for (ifp = FUNC0(); ifp != NULL; ifp = FUNC1(ifp))
		FUNC4(ifp);

	wlan_data_timer = FUNC3(wlan_poll_ticks,
	    wlan_poll_ticks, wlan_update_data, NULL, wlan_module);
}