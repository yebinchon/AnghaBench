#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 int SLI4_BMBX_RDY ; 
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ; 
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  SLI4_REG_BMBX ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_STATUS ; 
 int /*<<< orphan*/  SLI4_REG_UERR_MASK_HI ; 
 int /*<<< orphan*/  SLI4_REG_UERR_MASK_LO ; 
 int /*<<< orphan*/  SLI4_REG_UERR_STATUS_HI ; 
 int /*<<< orphan*/  SLI4_REG_UERR_STATUS_LO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int32_t FUNC6(sli4_t *sli4)
{
	int32_t	rc = 0;
	uint32_t port_val;
	uint32_t bmbx_val;
	uint32_t uerr_lo;
	uint32_t uerr_hi;
	uint32_t uerr_mask_lo;
	uint32_t uerr_mask_hi;

	if (SLI4_IF_TYPE_BE3_SKH_PF == FUNC4(sli4)) {
		/* for iftype=0, dump ready when UE is encountered */
		uerr_lo = FUNC5(sli4, SLI4_REG_UERR_STATUS_LO);
		uerr_hi = FUNC5(sli4, SLI4_REG_UERR_STATUS_HI);
		uerr_mask_lo = FUNC5(sli4, SLI4_REG_UERR_MASK_LO);
		uerr_mask_hi = FUNC5(sli4, SLI4_REG_UERR_MASK_HI);
		if ((uerr_lo & ~uerr_mask_lo) || (uerr_hi & ~uerr_mask_hi)) {
			rc = 1;
		}

	} else if (SLI4_IF_TYPE_LANCER_FC_ETH == FUNC4(sli4)) {
		/*
		 * Ensure that the port is ready AND the mailbox is
		 * ready before signaling that the dump is ready to go.
		 */
		port_val = FUNC5(sli4, SLI4_REG_SLIPORT_STATUS);
		bmbx_val = FUNC5(sli4, SLI4_REG_BMBX);

		if ((bmbx_val & SLI4_BMBX_RDY) &&
		    FUNC2(port_val)) { 
		    	if(FUNC0(port_val)) {
				rc = 1;
			}else if( FUNC1(port_val)) {
				rc = 2;
			}
		}
	} else {
		FUNC3(sli4->os, "invalid iftype=%d\n", FUNC4(sli4));
		return -1;
	}
	return rc;
}