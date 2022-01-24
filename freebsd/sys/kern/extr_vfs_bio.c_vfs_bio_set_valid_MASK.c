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
struct buf {int b_flags; int b_offset; int b_npages; int /*<<< orphan*/ * b_pages; } ;

/* Variables and functions */
 int B_VMIO ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void   
FUNC3(struct buf *bp, int base, int size)
{
	int i, n;
	vm_page_t m;

	if (!(bp->b_flags & B_VMIO))
		return;

	/*
	 * Fixup base to be relative to beginning of first page.
	 * Set initial n to be the maximum number of bytes in the
	 * first page that can be validated.
	 */
	base += (bp->b_offset & PAGE_MASK);
	n = PAGE_SIZE - (base & PAGE_MASK);

	/*
	 * Busy may not be strictly necessary here because the pages are
	 * unlikely to be fully valid and the vnode lock will synchronize
	 * their access via getpages.  It is grabbed for consistency with
	 * other page validation.
	 */
	FUNC0(bp);
	for (i = base / PAGE_SIZE; size > 0 && i < bp->b_npages; ++i) {
		m = bp->b_pages[i];
		if (n > size)
			n = size;
		FUNC2(m, base & PAGE_MASK, n);
		base += n;
		size -= n;
		n = PAGE_SIZE;
	}
	FUNC1(bp);
}