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
struct dmar_unit {int /*<<< orphan*/  hw_gcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  DMAR_GCMD_IRE ; 
 int /*<<< orphan*/  DMAR_GCMD_REG ; 
 int DMAR_GSTS_IRES ; 
 int /*<<< orphan*/  DMAR_GSTS_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct dmar_unit *unit)
{
	int error;

	FUNC0(unit);
	unit->hw_gcmd &= ~DMAR_GCMD_IRE;
	FUNC3(unit, DMAR_GCMD_REG, unit->hw_gcmd);
	FUNC1(((FUNC2(unit, DMAR_GSTS_REG) & DMAR_GSTS_IRES)
	    == 0));
	return (error);
}