#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * ocs_sm_function_t ;
struct TYPE_8__ {TYPE_1__* app; } ;
struct TYPE_6__ {int /*<<< orphan*/  indicator; TYPE_3__ ctx; int /*<<< orphan*/  sli_wwpn; scalar_t__ sm_free_req_pending; TYPE_2__* hw; } ;
typedef  TYPE_1__ ocs_sli_port_t ;
struct TYPE_7__ {int /*<<< orphan*/  sli; int /*<<< orphan*/  os; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_rtn_e ;
typedef  int /*<<< orphan*/  ocs_domain_t ;

/* Variables and functions */
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_NO_MEMORY ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_VPI ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/ * __ocs_hw_port_alloc_init ; 
 int /*<<< orphan*/ * __ocs_hw_port_alloc_init_vpi ; 
 int /*<<< orphan*/ * __ocs_hw_port_alloc_read_sparm64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ocs_hw_rtn_e
FUNC10(ocs_hw_t *hw, ocs_sli_port_t *sport, ocs_domain_t *domain,
		uint8_t *wwpn)
{
	uint8_t	*cmd = NULL;
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
	uint32_t index;

	sport->indicator = UINT32_MAX;
	sport->hw = hw;
	sport->ctx.app = sport;
	sport->sm_free_req_pending = 0;

	/*
	 * Check if the chip is in an error state (UE'd) before proceeding.
	 */
	if (FUNC7(&hw->sli) > 0) {
		FUNC1(hw->os, "Chip is in an error state - reset needed\n");
		return OCS_HW_RTN_ERROR;
	}

	if (wwpn) {
		FUNC5(&sport->sli_wwpn, wwpn, sizeof(sport->sli_wwpn));
	}

	if (FUNC8(&hw->sli, SLI_RSRC_FCOE_VPI, &sport->indicator, &index)) {
		FUNC2(hw->os, "FCOE_VPI allocation failure\n");
		return OCS_HW_RTN_ERROR;
	}

	if (domain != NULL) {
		ocs_sm_function_t	next = NULL;

		cmd = FUNC4(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
		if (!cmd) {
			FUNC2(hw->os, "command memory allocation failed\n");
			rc = OCS_HW_RTN_NO_MEMORY;
			goto ocs_hw_port_alloc_out;
		}

		/* If the WWPN is NULL, fetch the default WWPN and WWNN before
		 * initializing the VPI
		 */
		if (!wwpn) {
			next = __ocs_hw_port_alloc_read_sparm64;
		} else {
			next = __ocs_hw_port_alloc_init_vpi;
		}

		FUNC6(&sport->ctx, next, cmd);
	} else if (!wwpn) {
		/* This is the convention for the HW, not SLI */
		FUNC3(hw->os, "need WWN for physical port\n");
		rc = OCS_HW_RTN_ERROR;
	} else {
		/* domain NULL and wwpn non-NULL */
		FUNC6(&sport->ctx, __ocs_hw_port_alloc_init, NULL);
	}

ocs_hw_port_alloc_out:
	if (rc != OCS_HW_RTN_SUCCESS) {
		FUNC0(hw->os, cmd, SLI4_BMBX_SIZE);

		FUNC9(&hw->sli, SLI_RSRC_FCOE_VPI, sport->indicator);
	}

	return rc;
}