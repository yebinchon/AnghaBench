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
typedef  void* caddr_t ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 scalar_t__ copy_page_dst_va ; 
 int /*<<< orphan*/  copy_page_mutex ; 
 scalar_t__ copy_page_src_va ; 
 int FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC8(mmu_t mmu, vm_page_t *ma, vm_offset_t a_offset,
    vm_page_t *mb, vm_offset_t b_offset, int xfersize)
{
	void *a_cp, *b_cp;
	vm_offset_t a_pg_offset, b_pg_offset;
	int cnt;

#ifdef __powerpc64__
	vm_page_t pa, pb;

	while (xfersize > 0) {
		a_pg_offset = a_offset & PAGE_MASK;
		pa = ma[a_offset >> PAGE_SHIFT];
		b_pg_offset = b_offset & PAGE_MASK;
		pb = mb[b_offset >> PAGE_SHIFT];
		cnt = min(xfersize, PAGE_SIZE - a_pg_offset);
		cnt = min(cnt, PAGE_SIZE - b_pg_offset);
		a_cp = (caddr_t)((uintptr_t)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(pa)) +
		    a_pg_offset);
		b_cp = (caddr_t)((uintptr_t)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(pb)) +
		    b_pg_offset);
		bcopy(a_cp, b_cp, cnt);
		a_offset += cnt;
		b_offset += cnt;
		xfersize -= cnt;
	}
#else
	FUNC6(&copy_page_mutex);
	while (xfersize > 0) {
		a_pg_offset = a_offset & PAGE_MASK;
		cnt = FUNC3(xfersize, PAGE_SIZE - a_pg_offset);
		FUNC4(mmu, copy_page_src_va,
		    FUNC1(ma[a_offset >> PAGE_SHIFT]));
		a_cp = (char *)copy_page_src_va + a_pg_offset;
		b_pg_offset = b_offset & PAGE_MASK;
		cnt = FUNC3(cnt, PAGE_SIZE - b_pg_offset);
		FUNC4(mmu, copy_page_dst_va,
		    FUNC1(mb[b_offset >> PAGE_SHIFT]));
		b_cp = (char *)copy_page_dst_va + b_pg_offset;
		FUNC2(a_cp, b_cp, cnt);
		FUNC5(mmu, copy_page_dst_va);
		FUNC5(mmu, copy_page_src_va);
		a_offset += cnt;
		b_offset += cnt;
		xfersize -= cnt;
	}
	FUNC7(&copy_page_mutex);
#endif
}