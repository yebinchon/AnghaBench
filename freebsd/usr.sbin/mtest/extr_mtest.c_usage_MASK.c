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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(void)
{

	FUNC0("j mcast-addr ifname [src-addr] - join IP multicast group\n");
	FUNC0("l mcast-addr ifname [src-addr] - leave IP multicast group\n");
	FUNC0(
"i mcast-addr ifname n          - set n include mode src filter\n");
	FUNC0(
"e mcast-addr ifname n          - set n exclude mode src filter\n");
	FUNC0("t mcast-addr ifname src-addr  - allow traffic from src\n");
	FUNC0("b mcast-addr ifname src-addr  - block traffic from src\n");
	FUNC0("g mcast-addr ifname n        - get and show n src filters\n");
	FUNC0("a ifname mac-addr          - add link multicast filter\n");
	FUNC0("d ifname mac-addr          - delete link multicast filter\n");
	FUNC0("m ifname 1/0               - set/clear ether allmulti flag\n");
	FUNC0("p ifname 1/0               - set/clear ether promisc flag\n");
	FUNC0("f filename                 - read command(s) from file\n");
	FUNC0("s seconds                  - sleep for some time\n");
	FUNC0("q                          - quit\n");
}