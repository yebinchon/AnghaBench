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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  fdt_xfer_hint; } ;
typedef  TYPE_1__ sli4_req_common_set_features_set_fdt_xfer_hint_t ;
typedef  int /*<<< orphan*/  param ;
struct TYPE_8__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_POLL ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI4_SET_FEATURES_SET_FTD_XFER_HINT ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,TYPE_1__*) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC5(ocs_hw_t *hw, uint32_t fdt_xfer_hint)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
	uint8_t buf[SLI4_BMBX_SIZE];
	sli4_req_common_set_features_set_fdt_xfer_hint_t param;

	FUNC3(&param, 0, sizeof(param));
	param.fdt_xfer_hint = fdt_xfer_hint;
	/* build the set_features command */
	FUNC4(&hw->sli, buf, SLI4_BMBX_SIZE,
				    SLI4_SET_FEATURES_SET_FTD_XFER_HINT,
				    sizeof(param),
				    &param);


	rc = FUNC0(hw, buf, OCS_CMD_POLL, NULL, NULL);
	if (rc) {
		FUNC2(hw->os, "set FDT hint %d failed: %d\n", fdt_xfer_hint, rc);
	} else {
		FUNC1(hw->os, "Set FTD transfer hint to %d\n", param.fdt_xfer_hint);
	}

	return rc;
}