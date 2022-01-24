#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_8__ {scalar_t__ status; int /*<<< orphan*/  semaphore; } ;
typedef  TYPE_2__ ocs_mgmt_linkcfg_arg_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  scalar_t__ ocs_hw_linkcfg_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_PORT_SET_LINK_CONFIG ; 
 int /*<<< orphan*/  OCS_SEM_FOREVER ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  ocs_mgmt_linkcfg_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(ocs_t *ocs, char *name, char *value)
{
	ocs_hw_linkcfg_e linkcfg;
	ocs_mgmt_linkcfg_arg_t cb_arg;
	ocs_hw_rtn_e status;

	FUNC4(&cb_arg.semaphore, 0, "mgmt_linkcfg");

	/* translate mgmt linkcfg string to HW linkcfg enum */
	linkcfg = FUNC0(value);

	/* set HW linkcfg */
	status = FUNC1(&ocs->hw, OCS_HW_PORT_SET_LINK_CONFIG,
				      (uintptr_t)linkcfg, ocs_mgmt_linkcfg_cb, &cb_arg);
	if (status) {
		FUNC3(ocs, "ocs_hw_set_linkcfg failed\n");
		return -1;
	}

	if (FUNC5(&cb_arg.semaphore, OCS_SEM_FOREVER)) {
		FUNC2(ocs, "ocs_sem_p failed\n");
		return -1;
	}

	if (cb_arg.status) {
		FUNC3(ocs, "failed to set linkcfg from HW status=%d\n",
			     cb_arg.status);
		return -1;
	}

	return 0;
}