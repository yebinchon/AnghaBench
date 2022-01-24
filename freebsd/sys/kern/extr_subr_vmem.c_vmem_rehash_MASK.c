#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vm_hashsize; struct vmem_hashlist* vm_hash0; struct vmem_hashlist* vm_hashlist; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int vmem_size_t ;
struct vmem_hashlist {int dummy; } ;
typedef  int /*<<< orphan*/  bt_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (struct vmem_hashlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmem_hashlist*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_VMEM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vmem_hashlist*,int /*<<< orphan*/ ) ; 
 struct vmem_hashlist* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(vmem_t *vm, vmem_size_t newhashsize)
{
	bt_t *bt;
	int i;
	struct vmem_hashlist *newhashlist;
	struct vmem_hashlist *oldhashlist;
	vmem_size_t oldhashsize;

	FUNC2(newhashsize > 0);

	newhashlist = FUNC8(sizeof(struct vmem_hashlist) * newhashsize,
	    M_VMEM, M_NOWAIT);
	if (newhashlist == NULL)
		return ENOMEM;
	for (i = 0; i < newhashsize; i++) {
		FUNC1(&newhashlist[i]);
	}

	FUNC3(vm);
	oldhashlist = vm->vm_hashlist;
	oldhashsize = vm->vm_hashsize;
	vm->vm_hashlist = newhashlist;
	vm->vm_hashsize = newhashsize;
	if (oldhashlist == NULL) {
		FUNC4(vm);
		return 0;
	}
	for (i = 0; i < oldhashsize; i++) {
		while ((bt = FUNC0(&oldhashlist[i])) != NULL) {
			FUNC6(vm, bt);
			FUNC5(vm, bt);
		}
	}
	FUNC4(vm);

	if (oldhashlist != vm->vm_hash0) {
		FUNC7(oldhashlist, M_VMEM);
	}

	return 0;
}