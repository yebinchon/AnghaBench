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
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/ * csock_fd ; 
 int /*<<< orphan*/  csock_input ; 
 int /*<<< orphan*/  dsock ; 
 int /*<<< orphan*/ * dsock_fd ; 
 int /*<<< orphan*/  dsock_input ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  module ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  oid_begemotNg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_index ; 
 scalar_t__ snmp_node ; 
 int /*<<< orphan*/  snmp_nodename ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	if (snmp_node == 0) {
		if (FUNC0(snmp_nodename, &csock, &dsock) < 0) {
			FUNC5(LOG_ERR, "NgMkSockNode: %m");
			FUNC1(1);
		}
		snmp_node = FUNC3(".:");
	}

	if ((csock_fd = FUNC2(csock, csock_input, NULL, module)) == NULL) {
		FUNC5(LOG_ERR, "fd_select failed on csock: %m");
		return;
	}
	if ((dsock_fd = FUNC2(dsock, dsock_input, NULL, module)) == NULL) {
		FUNC5(LOG_ERR, "fd_select failed on dsock: %m");
		return;
	}

	reg_index = FUNC4(&oid_begemotNg,
	    "The MIB for the NetGraph access module for SNMP.", module);
}