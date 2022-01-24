#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct buf {int b_bcount; int b_bufsize; int b_npages; int b_pgbefore; int b_pgafter; scalar_t__ b_blkno; int /*<<< orphan*/  b_bufobj; void* b_wcred; void* b_rcred; int /*<<< orphan*/  b_iodone; int /*<<< orphan*/  b_iocmd; int /*<<< orphan*/  b_flags; TYPE_1__** b_pages; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  scalar_t__ daddr_t ;
struct TYPE_20__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_19__ {int /*<<< orphan*/  handle; } ;
struct TYPE_18__ {int pindex; int oflags; scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  B_PAGING ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PSWP ; 
 scalar_t__ SWAPBLK_NONE ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_ALLOC_NORMAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int VM_PAGER_ERROR ; 
 int VM_PAGER_FAIL ; 
 int VM_PAGER_OK ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 int VPO_SWAPINPROG ; 
 int VPO_SWAPSLEEP ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  pglist ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int*,int*) ; 
 int /*<<< orphan*/  swp_pager_async_iodone ; 
 scalar_t__ FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buf*) ; 
 int /*<<< orphan*/  swrbuf_zone ; 
 TYPE_6__ thread0 ; 
 struct buf* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v_intrans ; 
 int /*<<< orphan*/  v_swapin ; 
 int /*<<< orphan*/  v_swappgsin ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC18 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(vm_object_t object, vm_page_t *ma, int count, int *rbehind,
    int *rahead)
{
	struct buf *bp;
	vm_page_t bm, mpred, msucc, p;
	vm_pindex_t pindex;
	daddr_t blk;
	int i, maxahead, maxbehind, reqcount;

	reqcount = count;

	/*
	 * Determine the final number of read-behind pages and
	 * allocate them BEFORE releasing the object lock.  Otherwise,
	 * there can be a problematic race with vm_object_split().
	 * Specifically, vm_object_split() might first transfer pages
	 * that precede ma[0] in the current object to a new object,
	 * and then this function incorrectly recreates those pages as
	 * read-behind pages in the current object.
	 */
	if (!FUNC13(object, ma[0]->pindex, &maxbehind, &maxahead))
		return (VM_PAGER_FAIL);

	/*
	 * Clip the readahead and readbehind ranges to exclude resident pages.
	 */
	if (rahead != NULL) {
		FUNC1(reqcount - 1 <= maxahead,
		    ("page count %d extends beyond swap block", reqcount));
		*rahead = FUNC11(*rahead, maxahead - (reqcount - 1));
		pindex = ma[reqcount - 1]->pindex;
		msucc = FUNC3(ma[reqcount - 1], listq);
		if (msucc != NULL && msucc->pindex - pindex - 1 < *rahead)
			*rahead = msucc->pindex - pindex - 1;
	}
	if (rbehind != NULL) {
		*rbehind = FUNC11(*rbehind, maxbehind);
		pindex = ma[0]->pindex;
		mpred = FUNC4(ma[0], pglist, listq);
		if (mpred != NULL && pindex - mpred->pindex - 1 < *rbehind)
			*rbehind = pindex - mpred->pindex - 1;
	}

	bm = ma[0];
	for (i = 0; i < count; i++)
		ma[i]->oflags |= VPO_SWAPINPROG;

	/*
	 * Allocate readahead and readbehind pages.
	 */
	if (rbehind != NULL) {
		for (i = 1; i <= *rbehind; i++) {
			p = FUNC18(object, ma[0]->pindex - i,
			    VM_ALLOC_NORMAL);
			if (p == NULL)
				break;
			p->oflags |= VPO_SWAPINPROG;
			bm = p;
		}
		*rbehind = i - 1;
	}
	if (rahead != NULL) {
		for (i = 0; i < *rahead; i++) {
			p = FUNC18(object,
			    ma[reqcount - 1]->pindex + i + 1, VM_ALLOC_NORMAL);
			if (p == NULL)
				break;
			p->oflags |= VPO_SWAPINPROG;
		}
		*rahead = i;
	}
	if (rbehind != NULL)
		count += *rbehind;
	if (rahead != NULL)
		count += *rahead;

	FUNC17(object, count);

	pindex = bm->pindex;
	blk = FUNC14(object, pindex, 0);
	FUNC1(blk != SWAPBLK_NONE,
	    ("no swap blocking containing %p(%jx)", object, (uintmax_t)pindex));

	FUNC9(object);
	bp = FUNC16(swrbuf_zone, M_WAITOK);
	/* Pages cannot leave the object while busy. */
	for (i = 0, p = bm; i < count; i++, p = FUNC3(p, listq)) {
		FUNC2(p->pindex == bm->pindex + i);
		bp->b_pages[i] = p;
	}

	bp->b_flags |= B_PAGING;
	bp->b_iocmd = BIO_READ;
	bp->b_iodone = swp_pager_async_iodone;
	bp->b_rcred = FUNC10(thread0.td_ucred);
	bp->b_wcred = FUNC10(thread0.td_ucred);
	bp->b_blkno = blk;
	bp->b_bcount = PAGE_SIZE * count;
	bp->b_bufsize = PAGE_SIZE * count;
	bp->b_npages = count;
	bp->b_pgbefore = rbehind != NULL ? *rbehind : 0;
	bp->b_pgafter = rahead != NULL ? *rahead : 0;

	FUNC6(v_swapin);
	FUNC5(v_swappgsin, count);

	/*
	 * perform the I/O.  NOTE!!!  bp cannot be considered valid after
	 * this point because we automatically release it on completion.
	 * Instead, we look at the one page we are interested in which we
	 * still hold a lock on even through the I/O completion.
	 *
	 * The other pages in our ma[] array are also released on completion,
	 * so we cannot assume they are valid anymore either.
	 *
	 * NOTE: b_blkno is destroyed by the call to swapdev_strategy
	 */
	FUNC0(bp);
	FUNC15(bp);

	/*
	 * Wait for the pages we want to complete.  VPO_SWAPINPROG is always
	 * cleared on completion.  If an I/O error occurs, SWAPBLK_NONE
	 * is set in the metadata for each page in the request.
	 */
	FUNC8(object);
	while ((ma[0]->oflags & VPO_SWAPINPROG) != 0) {
		ma[0]->oflags |= VPO_SWAPSLEEP;
		FUNC6(v_intrans);
		if (FUNC7(object, &object->handle, PSWP,
		    "swread", hz * 20)) {
			FUNC12(
"swap_pager: indefinite wait buffer: bufobj: %p, blkno: %jd, size: %ld\n",
			    bp->b_bufobj, (intmax_t)bp->b_blkno, bp->b_bcount);
		}
	}

	/*
	 * If we had an unrecoverable read error pages will not be valid.
	 */
	for (i = 0; i < reqcount; i++)
		if (ma[i]->valid != VM_PAGE_BITS_ALL)
			return (VM_PAGER_ERROR);

	return (VM_PAGER_OK);

	/*
	 * A final note: in a low swap situation, we cannot deallocate swap
	 * and mark a page dirty here because the caller is likely to mark
	 * the page clean when we return, causing the page to possibly revert
	 * to all-zero's later.
	 */
}