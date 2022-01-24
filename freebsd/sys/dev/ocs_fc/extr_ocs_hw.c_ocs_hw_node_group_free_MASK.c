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
struct TYPE_8__ {size_t index; int /*<<< orphan*/  indicator; } ;
typedef  TYPE_2__ ocs_remote_node_group_t ;
struct TYPE_9__ {TYPE_1__* rpi_ref; int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
struct TYPE_7__ {int /*<<< orphan*/  rpi_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_RPI ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_3__*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ocs_hw_rtn_e
FUNC5(ocs_hw_t *hw, ocs_remote_node_group_t *ngroup)
{
	int	ref;

	if (!hw || !ngroup) {
		FUNC3(NULL, "bad parameter hw=%p ngroup=%p\n",
				hw, ngroup);
		return OCS_HW_RTN_ERROR;
	}

	ref = FUNC0(&hw->rpi_ref[ngroup->index].rpi_count);
	if (ref) {
		/* Hmmm, the reference count is non-zero */
		FUNC2(hw->os, "node group reference=%d (RPI=%#x)\n",
				ref, ngroup->indicator);

		if (FUNC4(&hw->sli, SLI_RSRC_FCOE_RPI, ngroup->indicator)) {
			FUNC3(hw->os, "FCOE_RPI free failure RPI=%#x\n",
				    ngroup->indicator);
			return OCS_HW_RTN_ERROR;
		}

		FUNC1(&hw->rpi_ref[ngroup->index].rpi_count, 0);
	}

	ngroup->indicator = UINT32_MAX;
	ngroup->index = UINT32_MAX;

	return OCS_HW_RTN_SUCCESS;
}