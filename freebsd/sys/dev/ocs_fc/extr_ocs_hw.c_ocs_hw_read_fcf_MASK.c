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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  os; int /*<<< orphan*/  fcf_dmem; int /*<<< orphan*/  sli; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_M_NOWAIT ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_hw_cb_read_fcf ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC6(ocs_hw_t *hw, uint32_t index)
{
	uint8_t		*buf = NULL;
	int32_t		rc = OCS_HW_RTN_ERROR;

	buf = FUNC4(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
	if (!buf) {
		FUNC2(hw->os, "no buffer for command\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	if (FUNC5(&hw->sli, buf, SLI4_BMBX_SIZE, &hw->fcf_dmem,
			index)) {
		rc = FUNC1(hw, buf, OCS_CMD_NOWAIT, ocs_hw_cb_read_fcf, &hw->fcf_dmem);
	}

	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC3(hw->os, "FCOE_READ_FCF_TABLE failed\n");
		FUNC0(hw->os, buf, SLI4_BMBX_SIZE);
	}

	return rc;
}