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
struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct bufqueue {int /*<<< orphan*/  bq_queue; } ;
struct bufdomain {struct bufqueue bd_dirtyq; } ;
struct buf {scalar_t__ b_qindex; int b_vflags; int b_flags; struct vnode* b_vp; int /*<<< orphan*/  b_dep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufqueue*) ; 
 int FUNC3 (struct buf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int BV_BKGRDINPROG ; 
 int B_DELWRI ; 
 int B_INVAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct buf*,struct vnode*,int) ; 
 int /*<<< orphan*/  KTR_BUF ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 int LK_TRYUPGRADE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ QUEUE_SENTINEL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct buf*,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC9 (struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_NOWAIT ; 
 int /*<<< orphan*/  b_freelist ; 
 int /*<<< orphan*/  FUNC13 (struct buf*) ; 
 int /*<<< orphan*/  FUNC14 (struct buf*) ; 
 int /*<<< orphan*/  FUNC15 (struct buf*) ; 
 scalar_t__ FUNC16 (struct buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ bufdaemonproc ; 
 int /*<<< orphan*/  FUNC17 (struct buf*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ curproc ; 
 int flushwithdeps ; 
 int /*<<< orphan*/  FUNC19 (struct buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ hirunningspace ; 
 struct buf* FUNC20 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  notbufdflushes ; 
 scalar_t__ runningbufspace ; 
 int /*<<< orphan*/  FUNC22 (struct buf*) ; 
 int /*<<< orphan*/  FUNC23 (struct mount*) ; 
 int FUNC24 (struct vnode*,int) ; 
 scalar_t__ FUNC25 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 

__attribute__((used)) static int
FUNC27(struct vnode *lvp, struct bufdomain *bd, int target,
    int flushdeps)
{
	struct bufqueue *bq;
	struct buf *sentinel;
	struct vnode *vp;
	struct mount *mp;
	struct buf *bp;
	int hasdeps;
	int flushed;
	int error;
	bool unlock;

	flushed = 0;
	bq = &bd->bd_dirtyq;
	bp = NULL;
	sentinel = FUNC20(sizeof(struct buf), M_TEMP, M_WAITOK | M_ZERO);
	sentinel->b_qindex = QUEUE_SENTINEL;
	FUNC1(bq);
	FUNC8(&bq->bq_queue, sentinel, b_freelist);
	FUNC2(bq);
	while (flushed != target) {
		FUNC21();
		FUNC1(bq);
		bp = FUNC9(sentinel, b_freelist);
		if (bp != NULL) {
			FUNC10(&bq->bq_queue, sentinel, b_freelist);
			FUNC7(&bq->bq_queue, bp, sentinel,
			    b_freelist);
		} else {
			FUNC2(bq);
			break;
		}
		/*
		 * Skip sentinels inserted by other invocations of the
		 * flushbufqueues(), taking care to not reorder them.
		 *
		 * Only flush the buffers that belong to the
		 * vnode locked by the curthread.
		 */
		if (bp->b_qindex == QUEUE_SENTINEL || (lvp != NULL &&
		    bp->b_vp != lvp)) {
			FUNC2(bq);
			continue;
		}
		error = FUNC3(bp, LK_EXCLUSIVE | LK_NOWAIT, NULL);
		FUNC2(bq);
		if (error != 0)
			continue;

		/*
		 * BKGRDINPROG can only be set with the buf and bufobj
		 * locks both held.  We tolerate a race to clear it here.
		 */
		if ((bp->b_vflags & BV_BKGRDINPROG) != 0 ||
		    (bp->b_flags & B_DELWRI) == 0) {
			FUNC4(bp);
			continue;
		}
		if (bp->b_flags & B_INVAL) {
			FUNC15(bp);
			FUNC13(bp);
			flushed++;
			continue;
		}

		if (!FUNC6(&bp->b_dep) && FUNC16(bp, 0)) {
			if (flushdeps == 0) {
				FUNC4(bp);
				continue;
			}
			hasdeps = 1;
		} else
			hasdeps = 0;
		/*
		 * We must hold the lock on a vnode before writing
		 * one of its buffers. Otherwise we may confuse, or
		 * in the case of a snapshot vnode, deadlock the
		 * system.
		 *
		 * The lock order here is the reverse of the normal
		 * of vnode followed by buf lock.  This is ok because
		 * the NOWAIT will prevent deadlock.
		 */
		vp = bp->b_vp;
		if (FUNC25(vp, &mp, V_NOWAIT) != 0) {
			FUNC4(bp);
			continue;
		}
		if (lvp == NULL) {
			unlock = true;
			error = FUNC24(vp, LK_EXCLUSIVE | LK_NOWAIT);
		} else {
			FUNC0(vp, "getbuf");
			unlock = false;
			error = FUNC11(vp) == LK_EXCLUSIVE ? 0 :
			    FUNC24(vp, LK_TRYUPGRADE);
		}
		if (error == 0) {
			FUNC5(KTR_BUF, "flushbufqueue(%p) vp %p flags %X",
			    bp, bp->b_vp, bp->b_flags);
			if (curproc == bufdaemonproc) {
				FUNC22(bp);
			} else {
				FUNC14(bp);
				FUNC17(bp);
				FUNC18(notbufdflushes, 1);
			}
			FUNC23(mp);
			if (unlock)
				FUNC12(vp, 0);
			flushwithdeps += hasdeps;
			flushed++;

			/*
			 * Sleeping on runningbufspace while holding
			 * vnode lock leads to deadlock.
			 */
			if (curproc == bufdaemonproc &&
			    runningbufspace > hirunningspace)
				FUNC26();
			continue;
		}
		FUNC23(mp);
		FUNC4(bp);
	}
	FUNC1(bq);
	FUNC10(&bq->bq_queue, sentinel, b_freelist);
	FUNC2(bq);
	FUNC19(sentinel, M_TEMP);
	return (flushed);
}