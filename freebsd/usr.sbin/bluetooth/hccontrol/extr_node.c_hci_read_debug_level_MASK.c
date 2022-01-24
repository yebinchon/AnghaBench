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
struct ng_btsocket_hci_raw_node_debug {int debug; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int ERROR ; 
 int OK ; 
 int /*<<< orphan*/  SIOC_HCI_RAW_NODE_GET_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ng_btsocket_hci_raw_node_debug*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_btsocket_hci_raw_node_debug*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC3(int s, int argc, char **argv)
{
	struct ng_btsocket_hci_raw_node_debug	r;

	FUNC2(&r, 0, sizeof(r));
	if (FUNC1(s, SIOC_HCI_RAW_NODE_GET_DEBUG, &r, sizeof(r)) < 0)
		return (ERROR);

	FUNC0(stdout, "Debug level: %d\n", r.debug);

	return (OK);
}