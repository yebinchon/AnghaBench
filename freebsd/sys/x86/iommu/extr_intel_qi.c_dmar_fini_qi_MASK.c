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
struct dmar_unit {scalar_t__ inv_seq_waiters; scalar_t__ qi_enabled; scalar_t__ inv_queue_size; scalar_t__ inv_queue; int /*<<< orphan*/  unit; int /*<<< orphan*/ * qi_taskqueue; int /*<<< orphan*/  qi_task; } ;
struct dmar_qi_genseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,struct dmar_qi_genseq*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dmar_unit*,struct dmar_qi_genseq*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(struct dmar_unit *unit)
{
	struct dmar_qi_genseq gseq;

	if (!unit->qi_enabled)
		return;
	FUNC10(unit->qi_taskqueue, &unit->qi_task);
	FUNC11(unit->qi_taskqueue);
	unit->qi_taskqueue = NULL;

	FUNC0(unit);
	/* quisce */
	FUNC7(unit, 1);
	FUNC6(unit, &gseq, true);
	FUNC5(unit);
	FUNC8(unit, &gseq, false);
	/* only after the quisce, disable queue */
	FUNC4(unit);
	FUNC3(unit);
	FUNC2(unit->inv_seq_waiters == 0,
	    ("dmar%d: waiters on disabled queue", unit->unit));
	FUNC1(unit);

	FUNC9(unit->inv_queue, unit->inv_queue_size);
	unit->inv_queue = 0;
	unit->inv_queue_size = 0;
	unit->qi_enabled = 0;
}