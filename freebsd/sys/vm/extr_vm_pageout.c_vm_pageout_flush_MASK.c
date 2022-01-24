#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_21__ {int /*<<< orphan*/  type; } ;
struct TYPE_20__ {int aflags; TYPE_2__* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  OBJT_SWAP ; 
 int PGA_WRITEABLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
#define  VM_PAGER_AGAIN 133 
#define  VM_PAGER_BAD 132 
#define  VM_PAGER_ERROR 131 
#define  VM_PAGER_FAIL 130 
#define  VM_PAGER_OK 129 
#define  VM_PAGER_PEND 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_1__**,int,int,int*) ; 

int
FUNC16(vm_page_t *mc, int count, int flags, int mreq, int *prunlen,
    boolean_t *eio)
{
	vm_object_t object = mc[0]->object;
	int pageout_status[count];
	int numpagedout = 0;
	int i, runlen;

	FUNC1(object);

	/*
	 * Initiate I/O.  Mark the pages shared busy and verify that they're
	 * valid and read-only.
	 *
	 * We do not have to fixup the clean/dirty bits here... we can
	 * allow the pager to do it after the I/O completes.
	 *
	 * NOTE! mc[i]->dirty may be partial or fragmented due to an
	 * edge case with file fragments.
	 */
	for (i = 0; i < count; i++) {
		FUNC0(FUNC6(mc[i]),
		    ("vm_pageout_flush: partially invalid page %p index %d/%d",
			mc[i], i, count));
		FUNC0((mc[i]->aflags & PGA_WRITEABLE) == 0,
		    ("vm_pageout_flush: writeable page %p", mc[i]));
		FUNC7(mc[i]);
	}
	FUNC3(object, count);

	FUNC15(object, mc, count, flags, pageout_status);

	runlen = count - mreq;
	if (eio != NULL)
		*eio = FALSE;
	for (i = 0; i < count; i++) {
		vm_page_t mt = mc[i];

		FUNC0(pageout_status[i] == VM_PAGER_PEND ||
		    !FUNC2(mt),
		    ("vm_pageout_flush: page %p is not write protected", mt));
		switch (pageout_status[i]) {
		case VM_PAGER_OK:
			FUNC10(mt);
			if (FUNC9(mt))
				FUNC8(mt);
			FUNC13(mt);
			/* FALLTHROUGH */
		case VM_PAGER_PEND:
			numpagedout++;
			break;
		case VM_PAGER_BAD:
			/*
			 * The page is outside the object's range.  We pretend
			 * that the page out worked and clean the page, so the
			 * changes will be lost if the page is reclaimed by
			 * the page daemon.
			 */
			FUNC12(mt);
			FUNC10(mt);
			if (FUNC9(mt))
				FUNC8(mt);
			FUNC13(mt);
			break;
		case VM_PAGER_ERROR:
		case VM_PAGER_FAIL:
			/*
			 * If the page couldn't be paged out to swap because the
			 * pager wasn't able to find space, place the page in
			 * the PQ_UNSWAPPABLE holding queue.  This is an
			 * optimization that prevents the page daemon from
			 * wasting CPU cycles on pages that cannot be reclaimed
			 * becase no swap device is configured.
			 *
			 * Otherwise, reactivate the page so that it doesn't
			 * clog the laundry and inactive queues.  (We will try
			 * paging it out again later.)
			 */
			FUNC10(mt);
			if (object->type == OBJT_SWAP &&
			    pageout_status[i] == VM_PAGER_FAIL) {
				FUNC14(mt);
				numpagedout++;
			} else
				FUNC5(mt);
			FUNC13(mt);
			if (eio != NULL && i >= mreq && i - mreq < runlen)
				*eio = TRUE;
			break;
		case VM_PAGER_AGAIN:
			if (i >= mreq && i - mreq < runlen)
				runlen = i - mreq;
			break;
		}

		/*
		 * If the operation is still going, leave the page busy to
		 * block all other accesses. Also, leave the paging in
		 * progress indicator set so that we don't attempt an object
		 * collapse.
		 */
		if (pageout_status[i] != VM_PAGER_PEND) {
			FUNC4(object);
			FUNC11(mt);
		}
	}
	if (prunlen != NULL)
		*prunlen = runlen;
	return (numpagedout);
}