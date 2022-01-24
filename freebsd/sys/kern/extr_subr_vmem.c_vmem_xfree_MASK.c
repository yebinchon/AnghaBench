#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ vm_quantum_mask; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int /*<<< orphan*/  vmem_size_t ;
typedef  scalar_t__ vmem_addr_t ;
struct TYPE_26__ {scalar_t__ bt_start; scalar_t__ bt_size; scalar_t__ bt_type; } ;
typedef  TYPE_2__ bt_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  BT_MAXFREE ; 
 scalar_t__ BT_TYPE_BUSY ; 
 scalar_t__ BT_TYPE_FREE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  bt_seglist ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmem_seglist ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*,int) ; 

void
FUNC14(vmem_t *vm, vmem_addr_t addr, vmem_size_t size)
{
	bt_t *bt;
	bt_t *t;

	FUNC1(size > 0);

	FUNC5(vm);
	bt = FUNC8(vm, addr);
	FUNC1(bt != NULL);
	FUNC1(bt->bt_start == addr);
	FUNC1(bt->bt_size == FUNC12(vm, size) ||
	    bt->bt_size - FUNC12(vm, size) <= vm->vm_quantum_mask);
	FUNC1(bt->bt_type == BT_TYPE_BUSY);
	FUNC9(vm, bt);
	bt->bt_type = BT_TYPE_FREE;

	/* coalesce */
	t = FUNC2(bt, bt_seglist);
	if (t != NULL && t->bt_type == BT_TYPE_FREE) {
		FUNC1(FUNC0(bt) < t->bt_start);	/* YYY */
		bt->bt_size += t->bt_size;
		FUNC10(vm, t);
		FUNC11(vm, t);
	}
	t = FUNC3(bt, vmem_seglist, bt_seglist);
	if (t != NULL && t->bt_type == BT_TYPE_FREE) {
		FUNC1(FUNC0(t) < bt->bt_start);	/* YYY */
		bt->bt_size += t->bt_size;
		bt->bt_start = t->bt_start;
		FUNC10(vm, t);
		FUNC11(vm, t);
	}

	if (!FUNC13(vm, bt, false)) {
		FUNC7(vm, bt);
		FUNC4(vm);
		FUNC6(vm, BT_MAXFREE);
	}
}