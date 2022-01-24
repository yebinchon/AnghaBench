#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_2__* vm_object_t ;
struct buf {int b_ioflags; scalar_t__ b_error; scalar_t__ b_iocmd; int b_npages; int b_pgbefore; int b_pgafter; int b_flags; int /*<<< orphan*/ * b_bufobj; int /*<<< orphan*/ * b_vp; TYPE_1__** b_pages; scalar_t__ b_kvabase; scalar_t__ b_data; scalar_t__ b_bcount; scalar_t__ b_blkno; } ;
struct TYPE_18__ {int handle; } ;
struct TYPE_17__ {int oflags; scalar_t__ dirty; TYPE_2__* object; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 scalar_t__ BIO_READ ; 
 int B_ASYNC ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 int VPO_SWAPINPROG ; 
 int VPO_SWAPSLEEP ; 
 scalar_t__ FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int nsw_wcount_async ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,long,long,scalar_t__) ; 
 int /*<<< orphan*/  swbuf_mtx ; 
 int /*<<< orphan*/  swrbuf_zone ; 
 int /*<<< orphan*/  swwbuf_zone ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct buf*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int*) ; 

__attribute__((used)) static void
FUNC23(struct buf *bp)
{
	int i;
	vm_object_t object = NULL;

	/*
	 * Report error - unless we ran out of memory, in which case
	 * we've already logged it in swapgeom_strategy().
	 */
	if (bp->b_ioflags & BIO_ERROR && bp->b_error != ENOMEM) {
		FUNC10(
		    "swap_pager: I/O error - %s failed; blkno %ld,"
			"size %ld, error %d\n",
		    ((bp->b_iocmd == BIO_READ) ? "pagein" : "pageout"),
		    (long)bp->b_blkno,
		    (long)bp->b_bcount,
		    bp->b_error
		);
	}

	/*
	 * remove the mapping for kernel virtual
	 */
	if (FUNC4(bp))
		FUNC9((vm_offset_t)bp->b_data, bp->b_npages);
	else
		bp->b_data = bp->b_kvabase;

	if (bp->b_npages) {
		object = bp->b_pages[0]->object;
		FUNC2(object);
	}

	/*
	 * cleanup pages.  If an error occurs writing to swap, we are in
	 * very serious trouble.  If it happens to be a disk error, though,
	 * we may be able to recover by reassigning the swap later on.  So
	 * in this case we remove the m->swapblk assignment for the page
	 * but do not free it in the rlist.  The errornous block(s) are thus
	 * never reallocated as swap.  Redirty the page and continue.
	 */
	for (i = 0; i < bp->b_npages; ++i) {
		vm_page_t m = bp->b_pages[i];

		m->oflags &= ~VPO_SWAPINPROG;
		if (m->oflags & VPO_SWAPSLEEP) {
			m->oflags &= ~VPO_SWAPSLEEP;
			FUNC22(&object->handle);
		}

		if (bp->b_ioflags & BIO_ERROR) {
			/*
			 * If an error occurs I'd love to throw the swapblk
			 * away without freeing it back to swapspace, so it
			 * can never be used again.  But I can't from an
			 * interrupt.
			 */
			if (bp->b_iocmd == BIO_READ) {
				/*
				 * NOTE: for reads, m->dirty will probably
				 * be overridden by the original caller of
				 * getpages so don't play cute tricks here.
				 */
				FUNC15(m);
			} else {
				/*
				 * If a write error occurs, reactivate page
				 * so it doesn't clog the inactive list,
				 * then finish the I/O.
				 */
				FUNC1(m->dirty == VM_PAGE_BITS_ALL);
				FUNC16(m);
				FUNC13(m);
				FUNC20(m);
				FUNC18(m);
			}
		} else if (bp->b_iocmd == BIO_READ) {
			/*
			 * NOTE: for reads, m->dirty will probably be
			 * overridden by the original caller of getpages so
			 * we cannot set them in order to free the underlying
			 * swap in a low-swap situation.  I don't think we'd
			 * want to do that anyway, but it was an optimization
			 * that existed in the old swapper for a time before
			 * it got ripped out due to precisely this problem.
			 */
			FUNC0(!FUNC7(m),
			    ("swp_pager_async_iodone: page %p is mapped", m));
			FUNC0(m->dirty == 0,
			    ("swp_pager_async_iodone: page %p is dirty", m));

			FUNC21(m);
			if (i < bp->b_pgbefore ||
			    i >= bp->b_npages - bp->b_pgafter)
				FUNC17(m);
		} else {
			/*
			 * For write success, clear the dirty
			 * status, then finish the I/O ( which decrements the
			 * busy count and possibly wakes waiter's up ).
			 * A page is only written to swap after a period of
			 * inactivity.  Therefore, we do not expect it to be
			 * reused.
			 */
			FUNC0(!FUNC8(m),
			    ("swp_pager_async_iodone: page %p is not write"
			    " protected", m));
			FUNC19(m);
			FUNC16(m);
			FUNC14(m);
			FUNC20(m);
			FUNC18(m);
		}
	}

	/*
	 * adjust pip.  NOTE: the original parent may still have its own
	 * pip refs on the object.
	 */
	if (object != NULL) {
		FUNC12(object, bp->b_npages);
		FUNC3(object);
	}

	/*
	 * swapdev_strategy() manually sets b_vp and b_bufobj before calling
	 * bstrategy(). Set them back to NULL now we're done with it, or we'll
	 * trigger a KASSERT in relpbuf().
	 */
	if (bp->b_vp) {
		    bp->b_vp = NULL;
		    bp->b_bufobj = NULL;
	}
	/*
	 * release the physical I/O buffer
	 */
	if (bp->b_flags & B_ASYNC) {
		FUNC5(&swbuf_mtx);
		if (++nsw_wcount_async == 1)
			FUNC22(&nsw_wcount_async);
		FUNC6(&swbuf_mtx);
	}
	FUNC11((bp->b_iocmd == BIO_READ) ? swrbuf_zone : swwbuf_zone, bp);
}