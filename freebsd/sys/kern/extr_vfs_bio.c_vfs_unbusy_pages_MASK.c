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
struct buf {int b_flags; int b_npages; scalar_t__* b_pages; scalar_t__ b_data; int /*<<< orphan*/  b_offset; TYPE_1__* b_bufobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  bo_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int B_VMIO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ bogus_page ; 
 scalar_t__ FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

void
FUNC13(struct buf *bp)
{
	int i;
	vm_object_t obj;
	vm_page_t m;
	bool bogus;

	FUNC8(bp);
	if (!(bp->b_flags & B_VMIO))
		return;

	obj = bp->b_bufobj->bo_object;
	bogus = false;
	for (i = 0; i < bp->b_npages; i++) {
		m = bp->b_pages[i];
		if (m == bogus_page) {
			if (bogus == false) {
				bogus = true;
				FUNC3(obj);
			}
			m = FUNC11(obj, FUNC2(bp->b_offset) + i);
			if (!m)
				FUNC6("vfs_unbusy_pages: page missing\n");
			bp->b_pages[i] = m;
			if (FUNC5(bp)) {
				FUNC0(bp);
				FUNC7(FUNC9((vm_offset_t)bp->b_data),
				    bp->b_pages, bp->b_npages);
			} else
				FUNC1(bp);
		}
		FUNC12(m);
	}
	if (bogus)
		FUNC4(obj);
	FUNC10(obj, bp->b_npages);
}