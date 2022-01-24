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
struct TYPE_7__ {int /*<<< orphan*/ * os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
struct TYPE_8__ {int /*<<< orphan*/  sm; } ;
typedef  TYPE_2__ ocs_domain_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_HW_DOMAIN_REQ_FREE ; 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC4(ocs_hw_t *hw, ocs_domain_t *domain)
{
	ocs_hw_rtn_e	rc = OCS_HW_RTN_SUCCESS;

	if (!hw || !domain) {
		FUNC1(hw ? hw->os : NULL,
			"bad parameter(s) hw=%p domain=%p\n",
			hw, domain);
		return OCS_HW_RTN_ERROR;
	}

	/*
	 * Check if the chip is in an error state (UE'd) before proceeding.
	 */
	if (FUNC3(&hw->sli) > 0) {
		FUNC0(hw->os, "Chip is in an error state - reset needed\n");
		return OCS_HW_RTN_ERROR;
	}

	FUNC2(&domain->sm, OCS_EVT_HW_DOMAIN_REQ_FREE, NULL);
	return rc;
}