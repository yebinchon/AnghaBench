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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct dmar_unit {int hw_ecap; int ir_enabled; int irte_cnt; int /*<<< orphan*/  irtids; int /*<<< orphan*/ * irt; int /*<<< orphan*/  irt_phys; int /*<<< orphan*/  dev; int /*<<< orphan*/  qi_enabled; } ;
typedef  int /*<<< orphan*/  dmar_irte_t ;

/* Variables and functions */
 int DMAR_ECAP_IR ; 
 scalar_t__ FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int ENOMEM ; 
 int M_FIRSTFIT ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 scalar_t__ bootverbose ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*) ; 
 int /*<<< orphan*/  dmar_high ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_io_irqs ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 

int
FUNC13(struct dmar_unit *unit)
{

	if ((unit->hw_ecap & DMAR_ECAP_IR) == 0)
		return (0);
	unit->ir_enabled = 1;
	FUNC3("hw.dmar.ir", &unit->ir_enabled);
	if (!unit->ir_enabled)
		return (0);
	if (!unit->qi_enabled) {
		unit->ir_enabled = 0;
		if (bootverbose)
			FUNC5(unit->dev,
	     "QI disabled, disabling interrupt remapping\n");
		return (0);
	}
	unit->irte_cnt = FUNC4(num_io_irqs);
	unit->irt = (dmar_irte_t *)(uintptr_t)FUNC10(
	    unit->irte_cnt * sizeof(dmar_irte_t), M_ZERO | M_WAITOK, 0,
	    dmar_high, PAGE_SIZE, 0, FUNC0(unit) ?
	    VM_MEMATTR_DEFAULT : VM_MEMATTR_UNCACHEABLE);
	if (unit->irt == NULL)
		return (ENOMEM);
	unit->irt_phys = FUNC11((vm_offset_t)unit->irt);
	unit->irtids = FUNC12("dmarirt", 0, unit->irte_cnt, 1, 0,
	    M_FIRSTFIT | M_NOWAIT);
	FUNC1(unit);
	FUNC7(unit);
	FUNC8(unit);
	FUNC2(unit);

	/*
	 * Initialize mappings for already configured interrupt pins.
	 * Required, because otherwise the interrupts fault without
	 * irtes.
	 */
	FUNC9();

	FUNC1(unit);
	FUNC6(unit);
	FUNC2(unit);
	return (0);
}