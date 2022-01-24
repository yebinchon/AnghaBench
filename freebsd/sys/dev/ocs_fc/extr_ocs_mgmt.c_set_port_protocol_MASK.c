#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_9__ {scalar_t__ status; int /*<<< orphan*/  semaphore; } ;
typedef  TYPE_2__ ocs_mgmt_set_port_protocol_result_t ;
typedef  int /*<<< orphan*/  ocs_hw_port_protocol_e ;
typedef  int int32_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  OCS_HW_PORT_PROTOCOL_FC ; 
 int /*<<< orphan*/  OCS_HW_PORT_PROTOCOL_FCOE ; 
 int /*<<< orphan*/  OCS_HW_PORT_PROTOCOL_ISCSI ; 
 int OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_SEM_FOREVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  ocs_mgmt_set_port_protocol_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int32_t
FUNC7(ocs_t *ocs, char *name, char *value)
{
	ocs_mgmt_set_port_protocol_result_t result;
	int32_t rc = 0;
	ocs_hw_port_protocol_e new_protocol;
	uint8_t bus;
	uint8_t dev;
	uint8_t func;

	FUNC0(ocs, &bus, &dev, &func);

	FUNC4(&(result.semaphore), 0, "set_port_protocol");

	if (FUNC6(value, "iscsi") == 0) {
		new_protocol = OCS_HW_PORT_PROTOCOL_ISCSI;
	} else if (FUNC6(value, "fc") == 0) {
		new_protocol = OCS_HW_PORT_PROTOCOL_FC;
	} else if (FUNC6(value, "fcoe") == 0) {
		new_protocol = OCS_HW_PORT_PROTOCOL_FCOE;
	} else {
		return -1;
	}

	rc = FUNC1(&ocs->hw, new_protocol, func,
				       ocs_mgmt_set_port_protocol_cb, &result);
	if (rc == OCS_HW_RTN_SUCCESS) {
		if (FUNC5(&(result.semaphore), OCS_SEM_FOREVER) != 0) {
			/* Undefined failure */
			FUNC2(ocs, "ocs_sem_p failed\n");
			return -ENXIO;
		}
		if (result.status == 0) {
			/* Success. */
			rc = 0;
		} else {
			rc = -1;
			FUNC3(ocs, "setting active profile status 0x%x\n",
				     result.status);
		}
	}

	return rc;
}