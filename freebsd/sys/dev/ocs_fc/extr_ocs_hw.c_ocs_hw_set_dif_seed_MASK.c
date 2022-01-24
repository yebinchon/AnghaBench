#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  seed; } ;
typedef  TYPE_2__ sli4_req_common_set_features_dif_seed_t ;
typedef  int /*<<< orphan*/  seed_param ;
struct TYPE_7__ {int /*<<< orphan*/  dif_seed; } ;
struct TYPE_9__ {int /*<<< orphan*/  os; TYPE_1__ config; int /*<<< orphan*/  sli; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_POLL ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI4_SET_FEATURES_DIF_SEED ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC5(ocs_hw_t *hw)
{
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
	uint8_t buf[SLI4_BMBX_SIZE];
	sli4_req_common_set_features_dif_seed_t seed_param;

	FUNC3(&seed_param, 0, sizeof(seed_param));
	seed_param.seed = hw->config.dif_seed;

	/* send set_features command */
	if (FUNC4(&hw->sli, buf, SLI4_BMBX_SIZE,
					SLI4_SET_FEATURES_DIF_SEED,
					4,
					(uint32_t*)&seed_param)) {
		rc = FUNC0(hw, buf, OCS_CMD_POLL, NULL, NULL);
		if (rc) {
			FUNC2(hw->os, "ocs_hw_command returns %d\n", rc);
		} else {
			FUNC1(hw->os, "DIF seed set to 0x%x\n",
					hw->config.dif_seed);
		}
	} else {
		FUNC2(hw->os, "sli_cmd_common_set_features failed\n");
		rc = OCS_HW_RTN_ERROR;
	}
	return rc;
}