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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  size_t vm_offset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
	char *a_cp, *b_cp;
	vm_page_t a_m, b_m;
	vm_offset_t a_pg_offset, b_pg_offset;
	vm_paddr_t a_phys, b_phys;
	int cnt;

	while (xfersize > 0) {
		a_pg_offset = a_offset & PAGE_MASK;
		cnt = FUNC4(xfersize, PAGE_SIZE - a_pg_offset);
		a_m = ma[a_offset >> PAGE_SHIFT];
		a_phys = FUNC2(a_m);
		b_pg_offset = b_offset & PAGE_MASK;
		cnt = FUNC4(cnt, PAGE_SIZE - b_pg_offset);
		b_m = mb[b_offset >> PAGE_SHIFT];
		b_phys = FUNC2(b_m);
		if (FUNC0(a_phys) &&
		    FUNC0(b_phys)) {
			FUNC7(a_m);
			FUNC6(
			    FUNC1(b_phys), PAGE_SIZE);
			a_cp = (char *)FUNC1(a_phys) +
			    a_pg_offset;
			b_cp = (char *)FUNC1(b_phys) +
			    b_pg_offset;
			FUNC3(a_cp, b_cp, cnt);
			FUNC5((vm_offset_t)b_cp, cnt);
		} else {
			a_cp = (char *)FUNC8(a_phys, b_phys);
			b_cp = (char *)a_cp + PAGE_SIZE;
			a_cp += a_pg_offset;
			b_cp += b_pg_offset;
			FUNC3(a_cp, b_cp, cnt);
			FUNC5((vm_offset_t)b_cp, cnt);
			FUNC9();
		}
		a_offset += cnt;
		b_offset += cnt;
		xfersize -= cnt;
	}
}