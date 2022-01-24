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
struct bufqueue {int /*<<< orphan*/  bq_queue; } ;
struct bufdomain {int bd_wanted; struct bufqueue* bd_cleanq; } ;
struct buf {scalar_t__ b_kvasize; int b_flags; int b_vflags; scalar_t__ b_qindex; scalar_t__ b_domain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bufdomain*) ; 
 scalar_t__ FUNC1 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufqueue*) ; 
 scalar_t__ FUNC3 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufqueue*) ; 
 scalar_t__ FUNC5 (struct buf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int BV_BKGRDERR ; 
 int BV_BKGRDINPROG ; 
 int B_INVAL ; 
 int B_REUSE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 scalar_t__ QUEUE_CLEAN ; 
 struct buf* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC10 (struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_freelist ; 
 int /*<<< orphan*/  FUNC12 (struct bufqueue*,struct buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct buf*) ; 
 int /*<<< orphan*/  FUNC14 (struct buf*) ; 
 int /*<<< orphan*/  bufdefragcnt ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC16(struct bufdomain *bd, bool kva)
{
	struct bufqueue *bq;
	struct buf *bp, *nbp;

	if (kva)
		FUNC15(bufdefragcnt, 1);
	nbp = NULL;
	bq = bd->bd_cleanq;
	FUNC2(bq);
	FUNC7(FUNC3(bq) == FUNC1(bd),
	    ("buf_recycle: Locks don't match"));
	nbp = FUNC8(&bq->bq_queue);

	/*
	 * Run scan, possibly freeing data and/or kva mappings on the fly
	 * depending.
	 */
	while ((bp = nbp) != NULL) {
		/*
		 * Calculate next bp (we can only use it if we do not
		 * release the bqlock).
		 */
		nbp = FUNC10(bp, b_freelist);

		/*
		 * If we are defragging then we need a buffer with 
		 * some kva to reclaim.
		 */
		if (kva && bp->b_kvasize == 0)
			continue;

		if (FUNC5(bp, LK_EXCLUSIVE | LK_NOWAIT, NULL) != 0)
			continue;

		/*
		 * Implement a second chance algorithm for frequently
		 * accessed buffers.
		 */
		if ((bp->b_flags & B_REUSE) != 0) {
			FUNC11(&bq->bq_queue, bp, b_freelist);
			FUNC9(&bq->bq_queue, bp, b_freelist);
			bp->b_flags &= ~B_REUSE;
			FUNC6(bp);
			continue;
		}

		/*
		 * Skip buffers with background writes in progress.
		 */
		if ((bp->b_vflags & BV_BKGRDINPROG) != 0) {
			FUNC6(bp);
			continue;
		}

		FUNC7(bp->b_qindex == QUEUE_CLEAN,
		    ("buf_recycle: inconsistent queue %d bp %p",
		    bp->b_qindex, bp));
		FUNC7(bp->b_domain == FUNC0(bd),
		    ("getnewbuf: queue domain %d doesn't match request %d",
		    bp->b_domain, (int)FUNC0(bd)));
		/*
		 * NOTE:  nbp is now entirely invalid.  We can only restart
		 * the scan from this point on.
		 */
		FUNC12(bq, bp);
		FUNC4(bq);

		/*
		 * Requeue the background write buffer with error and
		 * restart the scan.
		 */
		if ((bp->b_vflags & BV_BKGRDERR) != 0) {
			FUNC13(bp);
			FUNC2(bq);
			nbp = FUNC8(&bq->bq_queue);
			continue;
		}
		bp->b_flags |= B_INVAL;
		FUNC14(bp);
		return (0);
	}
	bd->bd_wanted = 1;
	FUNC4(bq);

	return (ENOBUFS);
}