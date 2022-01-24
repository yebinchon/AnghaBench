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
struct nodeinfo {char* name; int id; int hooks; } ;
struct ng_btsocket_hci_raw_node_list_names {int num_names; struct nodeinfo* names; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int ERROR ; 
 int MAX_NODE_NUM ; 
 int OK ; 
 int /*<<< orphan*/  SIOC_HCI_RAW_NODE_LIST_NAMES ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nodeinfo*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct ng_btsocket_hci_raw_node_list_names*,int) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC4(int s, int argc, char **argv)
{
	struct ng_btsocket_hci_raw_node_list_names	r;
	int						i;

	r.num_names = MAX_NODE_NUM;
	r.names = (struct nodeinfo*)FUNC0(MAX_NODE_NUM, sizeof(struct nodeinfo));
	if (r.names == NULL)
		return (ERROR);

	if (FUNC3(s, SIOC_HCI_RAW_NODE_LIST_NAMES, &r, sizeof(r)) < 0) {
		FUNC2(r.names);
		return (ERROR);
	}

	FUNC1(stdout, "Name            ID       Num hooks\n");
	for (i = 0; i < r.num_names; ++i)
		FUNC1(stdout, "%-15s %08x %9d\n",
		    r.names[i].name, r.names[i].id, r.names[i].hooks);

	FUNC2(r.names);

	return (OK);
}