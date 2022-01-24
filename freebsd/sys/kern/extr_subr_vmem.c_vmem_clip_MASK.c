#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ vm_quantum_mask; } ;
typedef  TYPE_1__ vmem_t ;
typedef  scalar_t__ vmem_size_t ;
typedef  scalar_t__ vmem_addr_t ;
struct TYPE_18__ {scalar_t__ bt_type; scalar_t__ bt_size; scalar_t__ bt_start; } ;
typedef  TYPE_2__ bt_t ;

/* Variables and functions */
 void* BT_TYPE_BUSY ; 
 scalar_t__ BT_TYPE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  bt_seglist ; 
 int /*<<< orphan*/  vmem_seglist ; 

__attribute__((used)) static void
FUNC8(vmem_t *vm, bt_t *bt, vmem_addr_t start, vmem_size_t size)
{
	bt_t *btnew;
	bt_t *btprev;

	FUNC2(vm);
	FUNC0(bt->bt_type == BT_TYPE_FREE);
	FUNC0(bt->bt_size >= size);
	FUNC7(vm, bt);
	if (bt->bt_start != start) {
		btprev = FUNC3(vm);
		btprev->bt_type = BT_TYPE_FREE;
		btprev->bt_start = bt->bt_start;
		btprev->bt_size = start - bt->bt_start;
		bt->bt_start = start;
		bt->bt_size -= btprev->bt_size;
		FUNC5(vm, btprev);
		FUNC6(vm, btprev,
		    FUNC1(bt, vmem_seglist, bt_seglist));
	}
	FUNC0(bt->bt_start == start);
	if (bt->bt_size != size && bt->bt_size - size > vm->vm_quantum_mask) {
		/* split */
		btnew = FUNC3(vm);
		btnew->bt_type = BT_TYPE_BUSY;
		btnew->bt_start = bt->bt_start;
		btnew->bt_size = size;
		bt->bt_start = bt->bt_start + size;
		bt->bt_size -= size;
		FUNC5(vm, bt);
		FUNC6(vm, btnew,
		    FUNC1(bt, vmem_seglist, bt_seglist));
		FUNC4(vm, btnew);
		bt = btnew;
	} else {
		bt->bt_type = BT_TYPE_BUSY;
		FUNC4(vm, bt);
	}
	FUNC0(bt->bt_size >= size);
}