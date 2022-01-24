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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_offset_t ;
struct buf {int b_npages; int /*<<< orphan*/ ** b_pages; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct buf *bp, int newbsize)
{
	vm_offset_t from;
	vm_page_t p;
	int index, newnpages;

	FUNC0(bp);

	from = FUNC2((vm_offset_t)bp->b_data + newbsize);
	newnpages = (from - FUNC3((vm_offset_t)bp->b_data)) >> PAGE_SHIFT;
	if (bp->b_npages > newnpages)
		FUNC1(from, bp->b_npages - newnpages);
	for (index = newnpages; index < bp->b_npages; index++) {
		p = bp->b_pages[index];
		bp->b_pages[index] = NULL;
		FUNC5(p);
		FUNC4(p);
	}
	bp->b_npages = newnpages;
}