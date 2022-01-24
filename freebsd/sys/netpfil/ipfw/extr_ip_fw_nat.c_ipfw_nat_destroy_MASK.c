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
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifaddr_event ; 
 int /*<<< orphan*/  ifaddr_event_tag ; 
 int /*<<< orphan*/ * ipfw_nat_cfg_ptr ; 
 int /*<<< orphan*/ * ipfw_nat_del_ptr ; 
 int /*<<< orphan*/ * ipfw_nat_get_cfg_ptr ; 
 int /*<<< orphan*/ * ipfw_nat_get_log_ptr ; 
 int /*<<< orphan*/ * ipfw_nat_ptr ; 
 int /*<<< orphan*/ * lookup_nat_ptr ; 
 int /*<<< orphan*/  scodes ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC0(ifaddr_event, ifaddr_event_tag);
	/* deregister ipfw_nat */
	FUNC1(1, scodes);
	ipfw_nat_ptr = NULL;
	lookup_nat_ptr = NULL;
	ipfw_nat_cfg_ptr = NULL;
	ipfw_nat_del_ptr = NULL;
	ipfw_nat_get_cfg_ptr = NULL;
	ipfw_nat_get_log_ptr = NULL;
}