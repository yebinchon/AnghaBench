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
struct buf {int b_flags; int b_offset; int b_npages; scalar_t__ b_resid; TYPE_1__** b_pages; scalar_t__ b_bufsize; int /*<<< orphan*/  b_ioflags; } ;
struct TYPE_4__ {int valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int B_INVAL ; 
 int B_MALLOC ; 
 int B_VMIO ; 
 int DEV_BSIZE ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 TYPE_1__* bogus_page ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

void
FUNC7(struct buf *bp) 
{
	int i, j, mask, sa, ea, slide;

	if ((bp->b_flags & (B_VMIO | B_MALLOC)) != B_VMIO) {
		FUNC0(bp);
		return;
	}
	bp->b_flags &= ~B_INVAL;
	bp->b_ioflags &= ~BIO_ERROR;
	FUNC4(bp);
	sa = bp->b_offset & PAGE_MASK;
	slide = 0;
	for (i = 0; i < bp->b_npages; i++, sa = 0) {
		slide = FUNC1(slide + PAGE_SIZE, bp->b_offset + bp->b_bufsize);
		ea = slide & PAGE_MASK;
		if (ea == 0)
			ea = PAGE_SIZE;
		if (bp->b_pages[i] == bogus_page)
			continue;
		j = sa / DEV_BSIZE;
		mask = ((1 << ((ea - sa) / DEV_BSIZE)) - 1) << j;
		if ((bp->b_pages[i]->valid & mask) == mask)
			continue;
		if ((bp->b_pages[i]->valid & mask) == 0)
			FUNC2(bp->b_pages[i], sa, ea - sa);
		else {
			for (; sa < ea; sa += DEV_BSIZE, j++) {
				if ((bp->b_pages[i]->valid & (1 << j)) == 0) {
					FUNC2(bp->b_pages[i],
					    sa, DEV_BSIZE);
				}
			}
		}
		FUNC6(bp->b_pages[i], j * DEV_BSIZE,
		    FUNC3(ea - sa, DEV_BSIZE));
	}
	FUNC5(bp);
	bp->b_resid = 0;
}