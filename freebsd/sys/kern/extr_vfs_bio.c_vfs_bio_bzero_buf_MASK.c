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
struct buf {int b_npages; int /*<<< orphan*/ * b_pages; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

void
FUNC5(struct buf *bp, int base, int size)
{
	vm_page_t m;
	int i, n;

	if (FUNC2(bp)) {
		FUNC0(bp);
		FUNC3(bp->b_data + base, size);
	} else {
		FUNC1(bp);
		n = PAGE_SIZE - (base & PAGE_MASK);
		for (i = base / PAGE_SIZE; size > 0 && i < bp->b_npages; ++i) {
			m = bp->b_pages[i];
			if (n > size)
				n = size;
			FUNC4(m, base & PAGE_MASK, n);
			base += n;
			size -= n;
			n = PAGE_SIZE;
		}
	}
}