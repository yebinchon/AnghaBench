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
typedef  scalar_t__ uint64_t ;
struct dmar_unit {int irte_cnt; int hw_gcmd; scalar_t__ irt_phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  DMAR_GCMD_REG ; 
 int DMAR_GCMD_SIRTP ; 
 int DMAR_GSTS_IRTPS ; 
 int /*<<< orphan*/  DMAR_GSTS_REG ; 
 scalar_t__ DMAR_IRTA_EIME ; 
 int /*<<< orphan*/  DMAR_IRTA_REG ; 
 scalar_t__ DMAR_IRTA_S_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

int
FUNC9(struct dmar_unit *unit)
{
	uint64_t irta, s;
	int error;

	FUNC0(unit);
	irta = unit->irt_phys;
	if (FUNC2(unit))
		irta |= DMAR_IRTA_EIME;
	s = FUNC7(unit->irte_cnt) - 2;
	FUNC3(unit->irte_cnt >= 2 && s <= DMAR_IRTA_S_MASK &&
	    FUNC8(unit->irte_cnt),
	    ("IRTA_REG_S overflow %x", unit->irte_cnt));
	irta |= s;
	FUNC6(unit, DMAR_IRTA_REG, irta);
	FUNC5(unit, DMAR_GCMD_REG, unit->hw_gcmd | DMAR_GCMD_SIRTP);
	FUNC1(((FUNC4(unit, DMAR_GSTS_REG) & DMAR_GSTS_IRTPS)
	    != 0));
	return (error);
}