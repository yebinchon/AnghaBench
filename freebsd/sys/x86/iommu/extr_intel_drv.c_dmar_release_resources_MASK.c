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
struct dmar_unit {int /*<<< orphan*/ * ctx_obj; int /*<<< orphan*/ * domids; int /*<<< orphan*/ * regs; int /*<<< orphan*/  reg_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DMAR_INTR_TOTAL ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(device_t dev, struct dmar_unit *unit)
{
	int i;

	FUNC3(unit);
	FUNC5(unit);
	FUNC6(unit);
	FUNC4(unit);
	for (i = 0; i < DMAR_INTR_TOTAL; i++)
		FUNC7(dev, unit, i);
	if (unit->regs != NULL) {
		FUNC0(dev, SYS_RES_MEMORY, unit->reg_rid,
		    unit->regs);
		FUNC1(dev, SYS_RES_MEMORY, unit->reg_rid,
		    unit->regs);
		unit->regs = NULL;
	}
	if (unit->domids != NULL) {
		FUNC2(unit->domids);
		unit->domids = NULL;
	}
	if (unit->ctx_obj != NULL) {
		FUNC8(unit->ctx_obj);
		unit->ctx_obj = NULL;
	}
}