#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  size_t vm_offset_t ;
struct TYPE_4__ {int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
	void *a_cp, *b_cp;
	vm_page_t m_a, m_b;
	vm_paddr_t p_a, p_b;
	vm_offset_t a_pg_offset, b_pg_offset;
	int cnt;

	while (xfersize > 0) {
		a_pg_offset = a_offset & PAGE_MASK;
		m_a = ma[a_offset >> PAGE_SHIFT];
		p_a = m_a->phys_addr;
		b_pg_offset = b_offset & PAGE_MASK;
		m_b = mb[b_offset >> PAGE_SHIFT];
		p_b = m_b->phys_addr;
		cnt = FUNC4(xfersize, PAGE_SIZE - a_pg_offset);
		cnt = FUNC4(cnt, PAGE_SIZE - b_pg_offset);
		if (FUNC2(!FUNC0(p_a))) {
			FUNC5("!DMAP a %lx", p_a);
		} else {
			a_cp = (char *)FUNC1(p_a) + a_pg_offset;
		}
		if (FUNC2(!FUNC0(p_b))) {
			FUNC5("!DMAP b %lx", p_b);
		} else {
			b_cp = (char *)FUNC1(p_b) + b_pg_offset;
		}
		FUNC3(a_cp, b_cp, cnt);
		a_offset += cnt;
		b_offset += cnt;
		xfersize -= cnt;
	}
}