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
struct ng_btsocket_hci_raw_node_role_switch {int role_switch; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int ERROR ; 
 int OK ; 
 int /*<<< orphan*/  SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ng_btsocket_hci_raw_node_role_switch*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_btsocket_hci_raw_node_role_switch*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC3(int s, int argc, char **argv)
{
	struct ng_btsocket_hci_raw_node_role_switch	r;

	FUNC2(&r, 0, sizeof(r));
	if (FUNC1(s, SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH, &r, sizeof(r)) < 0)
		return (ERROR);

	FUNC0(stdout, "Role switch: %d\n", r.role_switch);

	return (OK);
}