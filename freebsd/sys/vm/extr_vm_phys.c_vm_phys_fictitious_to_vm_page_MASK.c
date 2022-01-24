#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
struct vm_phys_fictitious_seg {scalar_t__ start; TYPE_1__* first_page; scalar_t__ end; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_FICTITIOUS ; 
 struct vm_phys_fictitious_seg* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vm_phys_fictitious_seg*) ; 
 size_t FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  fict_tree ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_phys_fictitious_reg_lock ; 
 int /*<<< orphan*/  vm_phys_fictitious_tree ; 

vm_page_t
FUNC5(vm_paddr_t pa)
{
	struct vm_phys_fictitious_seg tmp, *seg;
	vm_page_t m;

	m = NULL;
	tmp.start = pa;
	tmp.end = 0;

	FUNC3(&vm_phys_fictitious_reg_lock);
	seg = FUNC1(fict_tree, &vm_phys_fictitious_tree, &tmp);
	FUNC4(&vm_phys_fictitious_reg_lock);
	if (seg == NULL)
		return (NULL);

	m = &seg->first_page[FUNC2(pa - seg->start)];
	FUNC0((m->flags & PG_FICTITIOUS) != 0, ("%p not fictitious", m));

	return (m);
}