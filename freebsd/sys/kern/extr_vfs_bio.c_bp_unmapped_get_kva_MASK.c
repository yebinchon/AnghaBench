#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct buf {scalar_t__ b_data; scalar_t__ b_kvabase; int /*<<< orphan*/  b_vp; TYPE_1__* b_bufobj; } ;
typedef  int off_t ;
typedef  int daddr_t ;
struct TYPE_2__ {int bo_bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int DEV_BSIZE ; 
 int GB_KVAALLOC ; 
 int GB_NOWAIT_BD ; 
 int GB_UNMAPPED ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 scalar_t__ FUNC5 (struct buf*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  mappingrestarts ; 
 int /*<<< orphan*/  FUNC9 (char*,struct buf*) ; 
 scalar_t__ unmapped_buf ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct buf *bp, daddr_t blkno, int size, int gbflags)
{
	int bsize, maxsize, need_mapping, need_kva;
	off_t offset;

	need_mapping = bp->b_data == unmapped_buf &&
	    (gbflags & GB_UNMAPPED) == 0;
	need_kva = bp->b_kvabase == unmapped_buf &&
	    bp->b_data == unmapped_buf &&
	    (gbflags & GB_KVAALLOC) != 0;
	if (!need_mapping && !need_kva)
		return;

	FUNC1(bp);

	if (need_mapping && bp->b_kvabase != unmapped_buf) {
		/*
		 * Buffer is not mapped, but the KVA was already
		 * reserved at the time of the instantiation.  Use the
		 * allocated space.
		 */
		goto has_addr;
	}

	/*
	 * Calculate the amount of the address space we would reserve
	 * if the buffer was mapped.
	 */
	bsize = FUNC10(bp->b_vp, NULL) ? DEV_BSIZE : bp->b_bufobj->bo_bsize;
	FUNC2(bsize != 0, ("bsize == 0, check bo->bo_bsize"));
	offset = blkno * bsize;
	maxsize = size + (offset & PAGE_MASK);
	maxsize = FUNC8(maxsize, bsize);

	while (FUNC5(bp, maxsize, gbflags) != 0) {
		if ((gbflags & GB_NOWAIT_BD) != 0) {
			/*
			 * XXXKIB: defragmentation cannot
			 * succeed, not sure what else to do.
			 */
			FUNC9("GB_NOWAIT_BD and GB_UNMAPPED %p", bp);
		}
		FUNC7(mappingrestarts, 1);
		FUNC6(FUNC4(bp), bp->b_vp, gbflags, 0, 0);
	}
has_addr:
	if (need_mapping) {
		/* b_offset is handled by bpmap_qenter. */
		bp->b_data = bp->b_kvabase;
		FUNC0(bp);
		FUNC3(bp);
	}
}