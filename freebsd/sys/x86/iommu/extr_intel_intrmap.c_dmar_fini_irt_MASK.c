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
struct dmar_unit {int irte_cnt; int /*<<< orphan*/ * irt; int /*<<< orphan*/  irtids; scalar_t__ ir_enabled; } ;
typedef  int /*<<< orphan*/  dmar_irte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct dmar_unit *unit)
{

	unit->ir_enabled = 0;
	if (unit->irt != NULL) {
		FUNC0(unit);
		FUNC1(unit);
		FUNC3(unit->irtids);
		FUNC2((vm_offset_t)unit->irt, unit->irte_cnt *
		    sizeof(dmar_irte_t));
	}
}