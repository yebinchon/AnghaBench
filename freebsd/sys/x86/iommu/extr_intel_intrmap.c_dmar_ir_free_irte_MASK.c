#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct dmar_unit {size_t irte_cnt; int /*<<< orphan*/  irtids; TYPE_1__* irt; scalar_t__ ir_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  irte2; int /*<<< orphan*/  irte1; } ;
typedef  TYPE_1__ dmar_irte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static int
FUNC6(struct dmar_unit *unit, u_int cookie)
{
	dmar_irte_t *irte;

	FUNC2(unit != NULL && unit->ir_enabled,
	    ("unmap: cookie %d unit %p", cookie, unit));
	FUNC2(cookie < unit->irte_cnt,
	    ("bad cookie %u %u", cookie, unit->irte_cnt));
	irte = &(unit->irt[cookie]);
	FUNC3(&irte->irte1);
	FUNC3(&irte->irte2);
	FUNC0(unit);
	FUNC4(unit, cookie, 1);
	FUNC1(unit);
	FUNC5(unit->irtids, cookie, 1);
	return (0);
}