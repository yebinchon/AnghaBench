#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  xport; } ;
typedef  TYPE_1__ ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_XPORT_PORT_OFFLINE ; 
 int /*<<< orphan*/  OCS_XPORT_PORT_ONLINE ; 
 int /*<<< orphan*/  OCS_XPORT_WWPN_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (char*,scalar_t__*) ; 

int
FUNC4(ocs_t *ocs, char *name, char *value)
{
	int rc;
	uint64_t wwpn;

	if (FUNC1(value, "default") == 0) {
		wwpn = 0;
	}
	else if (FUNC3(value, &wwpn) != 0) {
		FUNC0(ocs, "Invalid WWPN: %s\n", value);
		return 1;
	}

	rc = FUNC2(ocs->xport, OCS_XPORT_WWPN_SET, wwpn);

	if(rc) {
		FUNC0(ocs, "OCS_XPORT_WWPN_SET failed: %d\n", rc);
		return rc;
	}

	rc = FUNC2(ocs->xport, OCS_XPORT_PORT_OFFLINE);
	if (rc) {
		FUNC0(ocs, "port offline failed : %d\n", rc);
	}

	rc = FUNC2(ocs->xport, OCS_XPORT_PORT_ONLINE);
	if (rc) {
		FUNC0(ocs, "port online failed : %d\n", rc);
	}

	return rc;
}