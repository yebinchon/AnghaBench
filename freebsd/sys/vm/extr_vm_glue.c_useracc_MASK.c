#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ TRUE ; 
 int VM_PROT_ALL ; 
 TYPE_2__* curproc ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(void *addr, int len, int rw)
{
	boolean_t rv;
	vm_prot_t prot;
	vm_map_t map;

	FUNC0((rw & ~VM_PROT_ALL) == 0,
	    ("illegal ``rw'' argument to useracc (%x)\n", rw));
	prot = rw;
	map = &curproc->p_vmspace->vm_map;
	if ((vm_offset_t)addr + len > FUNC5(map) ||
	    (vm_offset_t)addr + len < (vm_offset_t)addr) {
		return (FALSE);
	}
	FUNC4(map);
	rv = FUNC3(map, FUNC2((vm_offset_t)addr),
	    FUNC1((vm_offset_t)addr + len), prot);
	FUNC6(map);
	return (rv == TRUE);
}