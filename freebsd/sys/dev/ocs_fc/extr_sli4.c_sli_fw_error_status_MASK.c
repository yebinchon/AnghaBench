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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ if_type; int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ; 
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ; 
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_SEMAPHORE ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_STATUS ; 
 int /*<<< orphan*/  SLI4_REG_UERR_MASK_HI ; 
 int /*<<< orphan*/  SLI4_REG_UERR_MASK_LO ; 
 int /*<<< orphan*/  SLI4_REG_UERR_STATUS_HI ; 
 int /*<<< orphan*/  SLI4_REG_UERR_STATUS_LO ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int32_t FUNC4(sli4_t *sli4)
{
	uint32_t sliport_semaphore;
	int32_t rc = 0;

	sliport_semaphore = FUNC3(sli4, SLI4_REG_SLIPORT_SEMAPHORE);
	if (UINT32_MAX == sliport_semaphore) {
		FUNC2(sli4->os, "error reading SLIPORT_SEMAPHORE register\n");
		return 1;
	}
	rc = (FUNC0(sliport_semaphore) ? 1 : 0);

	if (rc == 0) {
		if (SLI4_IF_TYPE_BE3_SKH_PF == sli4->if_type ||
		    (SLI4_IF_TYPE_BE3_SKH_VF == sli4->if_type)) {
			uint32_t uerr_mask_lo, uerr_mask_hi;
			uint32_t uerr_status_lo, uerr_status_hi;

			uerr_mask_lo = FUNC3(sli4, SLI4_REG_UERR_MASK_LO);
			uerr_mask_hi = FUNC3(sli4, SLI4_REG_UERR_MASK_HI);
			uerr_status_lo = FUNC3(sli4, SLI4_REG_UERR_STATUS_LO);
			uerr_status_hi = FUNC3(sli4, SLI4_REG_UERR_STATUS_HI);
			if ((uerr_mask_lo & uerr_status_lo) != 0 ||
			    (uerr_mask_hi & uerr_status_hi) != 0) {
				rc = 1;
			}
		} else if (SLI4_IF_TYPE_LANCER_FC_ETH == sli4->if_type) {
			uint32_t sliport_status;

			sliport_status = FUNC3(sli4, SLI4_REG_SLIPORT_STATUS);
			rc = (FUNC1(sliport_status) ? 1 : 0);
		}
	}
	return rc;
}