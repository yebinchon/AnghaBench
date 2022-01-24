#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cmd_sent; int evnt_recv; int acl_recv; int acl_sent; int sco_recv; int sco_sent; int bytes_recv; int bytes_sent; } ;
struct ng_btsocket_hci_raw_node_stat {TYPE_1__ stat; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int ERROR ; 
 int OK ; 
 int /*<<< orphan*/  SIOC_HCI_RAW_NODE_GET_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ng_btsocket_hci_raw_node_stat*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_btsocket_hci_raw_node_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC3(int s, int argc, char **argv)
{
	struct ng_btsocket_hci_raw_node_stat	r;

	FUNC2(&r, 0, sizeof(r));
	if (FUNC1(s, SIOC_HCI_RAW_NODE_GET_STAT, &r, sizeof(r)) < 0)
		return (ERROR);

	FUNC0(stdout, "Commands sent: %d\n", r.stat.cmd_sent);
	FUNC0(stdout, "Events received: %d\n", r.stat.evnt_recv);
	FUNC0(stdout, "ACL packets received: %d\n", r.stat.acl_recv);
	FUNC0(stdout, "ACL packets sent: %d\n", r.stat.acl_sent);
	FUNC0(stdout, "SCO packets received: %d\n", r.stat.sco_recv);
	FUNC0(stdout, "SCO packets sent: %d\n", r.stat.sco_sent);
	FUNC0(stdout, "Bytes received: %d\n", r.stat.bytes_recv);
	FUNC0(stdout, "Bytes sent: %d\n", r.stat.bytes_sent);

	return (OK);
}