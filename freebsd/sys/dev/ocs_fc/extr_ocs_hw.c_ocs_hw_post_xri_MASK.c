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
struct TYPE_4__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_M_NOWAIT ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_hw_cb_post_xri ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ocs_hw_rtn_e
FUNC5(ocs_hw_t *hw, uint32_t xri_start, uint32_t num_to_post)
{
	uint8_t	*post_xri;
	ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;

	/* Since we need to allocate for mailbox queue, just always allocate */
	post_xri = FUNC3(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
	if (post_xri == NULL) {
		FUNC2(hw->os, "no buffer for command\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	/* Register the XRIs */
	if (FUNC4(&hw->sli, post_xri, SLI4_BMBX_SIZE,
			     xri_start, num_to_post)) {
		rc = FUNC1(hw, post_xri, OCS_CMD_NOWAIT, ocs_hw_cb_post_xri, NULL);
		if (rc != OCS_HW_RTN_SUCCESS) {
			FUNC0(hw->os, post_xri, SLI4_BMBX_SIZE);
			FUNC2(hw->os, "post_xri failed\n");
		}
	}
	return rc;
}