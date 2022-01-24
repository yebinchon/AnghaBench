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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {scalar_t__ if_type; } ;
typedef  TYPE_1__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ; 
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ; 
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SLI4_PORT_SEMAPHORE_STATUS_POST_READY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_SEMAPHORE ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_STATUS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int32_t
FUNC4(sli4_t *sli4)
{
	uint32_t val;
	int32_t rc = -1;

	/*
	 * Is firmware ready for operation? Check needed depends on IF_TYPE
	 */
	if (SLI4_IF_TYPE_BE3_SKH_PF == sli4->if_type ||
	    SLI4_IF_TYPE_BE3_SKH_VF == sli4->if_type) {
		val = FUNC3(sli4, SLI4_REG_SLIPORT_SEMAPHORE);
		rc = ((SLI4_PORT_SEMAPHORE_STATUS_POST_READY ==
		       FUNC1(val)) &&
		      (!FUNC0(val)) ? 1 : 0);
	} else if (SLI4_IF_TYPE_LANCER_FC_ETH == sli4->if_type) {
		val = FUNC3(sli4, SLI4_REG_SLIPORT_STATUS);
		rc = (FUNC2(val) ? 1 : 0);
	}
	return rc;
}