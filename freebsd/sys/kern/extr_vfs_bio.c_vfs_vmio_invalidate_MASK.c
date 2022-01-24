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
typedef  scalar_t__ vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct buf {int b_npages; int b_flags; int b_bufsize; int b_offset; scalar_t__* b_pages; TYPE_1__* b_bufobj; scalar_t__ b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  bo_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int B_NOREUSE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VM_ALLOC_SBUSY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int VPR_NOREUSE ; 
 scalar_t__ bogus_page ; 
 scalar_t__ FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static void
FUNC14(struct buf *bp)
{
	vm_object_t obj;
	vm_page_t m;
	int flags, i, resid, poffset, presid;

	if (FUNC5(bp)) {
		FUNC0(bp);
		FUNC8(FUNC9((vm_offset_t)bp->b_data), bp->b_npages);
	} else
		FUNC1(bp);
	/*
	 * Get the base offset and length of the buffer.  Note that 
	 * in the VMIO case if the buffer block size is not
	 * page-aligned then b_data pointer may not be page-aligned.
	 * But our b_pages[] array *IS* page aligned.
	 *
	 * block sizes less then DEV_BSIZE (usually 512) are not 
	 * supported due to the page granularity bits (m->valid,
	 * m->dirty, etc...). 
	 *
	 * See man buf(9) for more information
	 */
	flags = (bp->b_flags & B_NOREUSE) != 0 ? VPR_NOREUSE : 0;
	obj = bp->b_bufobj->bo_object;
	resid = bp->b_bufsize;
	poffset = bp->b_offset & PAGE_MASK;
	FUNC3(obj);
	for (i = 0; i < bp->b_npages; i++) {
		m = bp->b_pages[i];
		if (m == bogus_page)
			FUNC6("vfs_vmio_invalidate: Unexpected bogus page.");
		bp->b_pages[i] = NULL;

		presid = resid > (PAGE_SIZE - poffset) ?
		    (PAGE_SIZE - poffset) : resid;
		FUNC2(presid >= 0, ("brelse: extra page"));
		FUNC10(m, VM_ALLOC_SBUSY);
		if (FUNC7(m) == 0)
			FUNC12(m, poffset, presid);
		FUNC13(m);
		FUNC11(m, flags);
		resid -= presid;
		poffset = 0;
	}
	FUNC4(obj);
	bp->b_npages = 0;
}