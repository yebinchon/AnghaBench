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
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  xport; int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_LINK_SPEED ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_XPORT_PORT_OFFLINE ; 
 int /*<<< orphan*/  OCS_XPORT_PORT_ONLINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(ocs_t *ocs, char *name, char *value)
{
	int result = 0;
	ocs_hw_rtn_e hw_rc;
	int xport_rc;
	uint32_t spd;

	spd = FUNC3(value, NULL, 0);

	if ((spd != 0) && (spd != 2000) && (spd != 4000) &&
		(spd != 8000) && (spd != 16000) && (spd != 32000)) {
		FUNC2(ocs, "unsupported speed %d\n", spd);
		return 1;
	}

	FUNC1(ocs, "Taking port offline\n");
	xport_rc = FUNC4(ocs->xport, OCS_XPORT_PORT_OFFLINE);
	if (xport_rc != 0) {
		FUNC2(ocs, "Port offline failed\n");
		result = 1;
	} else {
		FUNC1(ocs, "Setting port to speed %d\n", spd);
		hw_rc = FUNC0(&ocs->hw, OCS_HW_LINK_SPEED, spd);
		if (hw_rc != OCS_HW_RTN_SUCCESS) {
			FUNC2(ocs, "Speed set failed\n");
			result = 1;
		}

		/* If we failed to set the speed we still want to try to bring
		 * the port back online */

		FUNC1(ocs, "Bringing port online\n");
		xport_rc = FUNC4(ocs->xport, OCS_XPORT_PORT_ONLINE);
		if (xport_rc != 0) {
			result = 1;
		}
	}

	return result;
}