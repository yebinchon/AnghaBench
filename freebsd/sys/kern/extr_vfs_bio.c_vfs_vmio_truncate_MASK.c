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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct buf {int b_npages; int b_flags; scalar_t__* b_pages; TYPE_1__* b_bufobj; scalar_t__ b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bo_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int B_DIRECT ; 
 int B_NOREUSE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int VPR_NOREUSE ; 
 int VPR_TRYFREE ; 
 scalar_t__ bogus_page ; 
 scalar_t__ FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC10(struct buf *bp, int desiredpages)
{
	vm_object_t obj;
	vm_page_t m;
	int flags, i;

	if (bp->b_npages == desiredpages)
		return;

	if (FUNC5(bp)) {
		FUNC0(bp);
		FUNC6((vm_offset_t)FUNC7((vm_offset_t)bp->b_data) +
		    (desiredpages << PAGE_SHIFT), bp->b_npages - desiredpages);
	} else
		FUNC1(bp);

	/*
	 * The object lock is needed only if we will attempt to free pages.
	 */
	flags = (bp->b_flags & B_NOREUSE) != 0 ? VPR_NOREUSE : 0;
	if ((bp->b_flags & B_DIRECT) != 0) {
		flags |= VPR_TRYFREE;
		obj = bp->b_bufobj->bo_object;
		FUNC3(obj);
	} else {
		obj = NULL;
	}
	for (i = desiredpages; i < bp->b_npages; i++) {
		m = bp->b_pages[i];
		FUNC2(m != bogus_page, ("allocbuf: bogus page found"));
		bp->b_pages[i] = NULL;
		if (obj != NULL)
			FUNC9(m, flags);
		else
			FUNC8(m, flags);
	}
	if (obj != NULL)
		FUNC4(obj);
	bp->b_npages = desiredpages;
}