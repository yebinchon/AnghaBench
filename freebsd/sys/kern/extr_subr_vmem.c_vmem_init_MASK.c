#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  bt_type; scalar_t__ bt_size; scalar_t__ bt_start; } ;
struct TYPE_13__ {int vm_quantum_mask; int /*<<< orphan*/  vm_hash0; int /*<<< orphan*/  vm_hashlist; int /*<<< orphan*/  vm_hashsize; int /*<<< orphan*/ * vm_freelist; TYPE_10__ vm_cursor; int /*<<< orphan*/  vm_seglist; scalar_t__ vm_inuse; scalar_t__ vm_limit; scalar_t__ vm_size; scalar_t__ vm_nbusytag; scalar_t__ vm_quantum_shift; int /*<<< orphan*/  vm_name; int /*<<< orphan*/  vm_freetags; scalar_t__ vm_nfreetags; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int vmem_size_t ;
typedef  int /*<<< orphan*/  vmem_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TYPE_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  VMEM_HASHSIZE_MIN ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int VMEM_MAXORDER ; 
 int /*<<< orphan*/  bt_seglist ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  vm_alllist ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  vmem_list ; 
 int /*<<< orphan*/  vmem_list_lock ; 

vmem_t *
FUNC16(vmem_t *vm, const char *name, vmem_addr_t base, vmem_size_t size,
    vmem_size_t quantum, vmem_size_t qcache_max, int flags)
{
	int i;

	FUNC2(quantum > 0);
	FUNC2((quantum & (quantum - 1)) == 0);

	FUNC7(vm, sizeof(*vm));

	FUNC5(vm, name);
	FUNC6(vm, name);
	vm->vm_nfreetags = 0;
	FUNC0(&vm->vm_freetags);
	FUNC13(vm->vm_name, name, sizeof(vm->vm_name));
	vm->vm_quantum_mask = quantum - 1;
	vm->vm_quantum_shift = FUNC8(quantum) - 1;
	vm->vm_nbusytag = 0;
	vm->vm_size = 0;
	vm->vm_limit = 0;
	vm->vm_inuse = 0;
	FUNC12(vm, qcache_max);

	FUNC3(&vm->vm_seglist);
	vm->vm_cursor.bt_start = vm->vm_cursor.bt_size = 0;
	vm->vm_cursor.bt_type = BT_TYPE_CURSOR;
	FUNC4(&vm->vm_seglist, &vm->vm_cursor, bt_seglist);

	for (i = 0; i < VMEM_MAXORDER; i++)
		FUNC0(&vm->vm_freelist[i]);

	FUNC9(&vm->vm_hash0, 0, sizeof(vm->vm_hash0));
	vm->vm_hashsize = VMEM_HASHSIZE_MIN;
	vm->vm_hashlist = vm->vm_hash0;

	if (size != 0) {
		if (FUNC14(vm, base, size, flags) != 0) {
			FUNC15(vm);
			return NULL;
		}
	}

	FUNC10(&vmem_list_lock);
	FUNC1(&vmem_list, vm, vm_alllist);
	FUNC11(&vmem_list_lock);

	return vm;
}