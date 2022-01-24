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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  size_t vm_offset_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  moea64_scratchpage_mtx ; 
 scalar_t__* moea64_scratchpage_va ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC6(mmu_t mmu, vm_page_t *ma, vm_offset_t a_offset,
    vm_page_t *mb, vm_offset_t b_offset, int xfersize)
{
	void *a_cp, *b_cp;
	vm_offset_t a_pg_offset, b_pg_offset;
	int cnt;

	FUNC4(&moea64_scratchpage_mtx);
	while (xfersize > 0) {
		a_pg_offset = a_offset & PAGE_MASK;
		cnt = FUNC2(xfersize, PAGE_SIZE - a_pg_offset);
		FUNC3(mmu, 0,
		    FUNC0(ma[a_offset >> PAGE_SHIFT]));
		a_cp = (char *)moea64_scratchpage_va[0] + a_pg_offset;
		b_pg_offset = b_offset & PAGE_MASK;
		cnt = FUNC2(cnt, PAGE_SIZE - b_pg_offset);
		FUNC3(mmu, 1,
		    FUNC0(mb[b_offset >> PAGE_SHIFT]));
		b_cp = (char *)moea64_scratchpage_va[1] + b_pg_offset;
		FUNC1(a_cp, b_cp, cnt);
		a_offset += cnt;
		b_offset += cnt;
		xfersize -= cnt;
	}
	FUNC5(&moea64_scratchpage_mtx);
}