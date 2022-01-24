#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  xport; } ;
typedef  TYPE_1__ ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_XPORT_PORT_OFFLINE ; 
 int /*<<< orphan*/  OCS_XPORT_PORT_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(ocs_t *ocs, char *name, char *value)
{
	int result = 0;
	int xport_rc;

	if (FUNC2(value, "offline") == 0) {
		FUNC0(ocs, "Setting port to %s\n", value);
		xport_rc = FUNC3(ocs->xport, OCS_XPORT_PORT_OFFLINE);
		if (xport_rc != 0) {
			FUNC1(ocs, "Setting port to offline failed\n");
			result = -1;
		}
	} else if (FUNC2(value, "online") == 0) {
		FUNC0(ocs, "Setting port to %s\n", value);
		xport_rc = FUNC3(ocs->xport, OCS_XPORT_PORT_ONLINE);
		if (xport_rc != 0) {
			FUNC1(ocs, "Setting port to online failed\n");
			result = -1;
		}
	} else {
		FUNC1(ocs, "Unsupported link state \"%s\"\n", value);
		result = -1;
	}

	return result;
}