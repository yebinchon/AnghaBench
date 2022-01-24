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
typedef  scalar_t__ vm_offset_t ;
struct buf {int b_bufsize; int b_flags; int /*<<< orphan*/ * b_data; int /*<<< orphan*/ * b_kvabase; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int B_MALLOC ; 
 int /*<<< orphan*/  M_BIOBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,int) ; 
 scalar_t__ bufmallocspace ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ maxbufmallocspace ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct buf *bp, int newbsize)
{
	caddr_t origbuf;
	int origbufsize;

	/*
	 * We only use malloced memory on the first allocation.
	 * and revert to page-allocated memory when the buffer
	 * grows.
	 *
	 * There is a potential smp race here that could lead
	 * to bufmallocspace slightly passing the max.  It
	 * is probably extremely rare and not worth worrying
	 * over.
	 */
	if (bp->b_bufsize == 0 && newbsize <= PAGE_SIZE/2 &&
	    bufmallocspace < maxbufmallocspace) {
		bp->b_data = FUNC4(newbsize, M_BIOBUF, M_WAITOK);
		bp->b_flags |= B_MALLOC;
		FUNC1(bp, newbsize);
		return;
	}

	/*
	 * If the buffer is growing on its other-than-first
	 * allocation then we revert to the page-allocation
	 * scheme.
	 */
	origbuf = NULL;
	origbufsize = 0;
	if (bp->b_flags & B_MALLOC) {
		origbuf = bp->b_data;
		origbufsize = bp->b_bufsize;
		bp->b_data = bp->b_kvabase;
		FUNC1(bp, 0);
		bp->b_flags &= ~B_MALLOC;
		newbsize = FUNC5(newbsize);
	}
	FUNC6(bp, (vm_offset_t) bp->b_data + bp->b_bufsize,
	    (vm_offset_t) bp->b_data + newbsize);
	if (origbuf != NULL) {
		FUNC0(origbuf, bp->b_data, origbufsize);
		FUNC3(origbuf, M_BIOBUF);
	}
	FUNC2(bp, newbsize);
}