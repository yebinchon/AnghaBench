#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_6__ {scalar_t__ pindex; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMAP_ENTER_QUICK_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(mmu_t mmu, pmap_t pm, vm_offset_t start, vm_offset_t end,
    vm_page_t m_start, vm_prot_t prot)
{
	vm_page_t m;
	vm_pindex_t diff, psize;

	FUNC3(m_start->object);

	psize = FUNC4(end - start);
	m = m_start;
	FUNC7(&pvh_global_lock);
	FUNC0(pm);
	while (m != NULL && (diff = m->pindex - m_start->pindex) < psize) {
		FUNC5(pm, start + FUNC6(diff), m, prot &
		    (VM_PROT_READ | VM_PROT_EXECUTE), PMAP_ENTER_QUICK_LOCKED,
		    0);
		m = FUNC2(m, listq);
	}
	FUNC8(&pvh_global_lock);
	FUNC1(pm);
}