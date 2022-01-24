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
 int PMAP_ENTER_NOSLEEP ; 
 int PMAP_ENTER_QUICK_LOCKED ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void
FUNC5(mmu_t mmu, pmap_t pm, vm_offset_t start, vm_offset_t end,
    vm_page_t m_start, vm_prot_t prot)
{
	vm_page_t m;
	vm_pindex_t diff, psize;

	FUNC1(m_start->object);

	psize = FUNC2(end - start);
	m = m_start;
	while (m != NULL && (diff = m->pindex - m_start->pindex) < psize) {
		FUNC3(mmu, pm, start + FUNC4(diff), m, prot &
		    (VM_PROT_READ | VM_PROT_EXECUTE), PMAP_ENTER_NOSLEEP |
		    PMAP_ENTER_QUICK_LOCKED, 0);
		m = FUNC0(m, listq);
	}
}