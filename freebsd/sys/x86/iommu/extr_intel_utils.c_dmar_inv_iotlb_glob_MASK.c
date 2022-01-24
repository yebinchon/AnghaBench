#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dmar_unit {int /*<<< orphan*/  hw_ecap; int /*<<< orphan*/  qi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DMAR_IOTLB_DR ; 
 int DMAR_IOTLB_DW ; 
 int DMAR_IOTLB_IIRG_GLB ; 
 int DMAR_IOTLB_IVT ; 
 int DMAR_IOTLB_IVT32 ; 
 scalar_t__ DMAR_IOTLB_REG_OFF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (struct dmar_unit*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,scalar_t__,int) ; 

int
FUNC6(struct dmar_unit *unit)
{
	int error, reg;

	FUNC0(unit);
	FUNC3(!unit->qi_enabled, ("QI enabled"));

	reg = 16 * FUNC1(unit->hw_ecap);
	/* See a comment about DMAR_CCMD_ICC in dmar_inv_ctx_glob. */
	FUNC5(unit, reg + DMAR_IOTLB_REG_OFF, DMAR_IOTLB_IVT |
	    DMAR_IOTLB_IIRG_GLB | DMAR_IOTLB_DR | DMAR_IOTLB_DW);
	FUNC2(((FUNC4(unit, reg + DMAR_IOTLB_REG_OFF + 4) &
	    DMAR_IOTLB_IVT32) == 0));
	return (error);
}