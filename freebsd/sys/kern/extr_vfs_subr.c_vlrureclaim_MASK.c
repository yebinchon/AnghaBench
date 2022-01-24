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
struct vnode {scalar_t__ v_type; int v_iflag; TYPE_1__* v_object; int /*<<< orphan*/  v_cache_src; scalar_t__ v_usecount; } ;
struct mount {int mnt_nvnodelistsize; int /*<<< orphan*/  mnt_nvnodelist; } ;
typedef  int int64_t ;
struct TYPE_2__ {int resident_page_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int LK_EXCLUSIVE ; 
 int LK_INTERLOCK ; 
 int LK_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  PRI_USER ; 
 struct vnode* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 struct vnode* FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int VI_FREE ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 scalar_t__ VMARKER ; 
 scalar_t__ FUNC11 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  desiredvnodes ; 
 scalar_t__ gapvnodes ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recycles_count ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  v_nmntvnodes ; 
 int /*<<< orphan*/  FUNC17 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC21 (struct mount*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct mount**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC23(struct mount *mp, bool reclaim_nc_src, int trigger)
{
	struct vnode *vp;
	int count, done, target;

	done = 0;
	FUNC22(NULL, &mp, V_WAIT);
	FUNC2(mp);
	count = mp->mnt_nvnodelistsize;
	target = count * (int64_t)gapvnodes / FUNC14(desiredvnodes, 1);
	target = target / 10 + 1;
	while (count != 0 && done < target) {
		vp = FUNC4(&mp->mnt_nvnodelist);
		while (vp != NULL && vp->v_type == VMARKER)
			vp = FUNC6(vp, v_nmntvnodes);
		if (vp == NULL)
			break;
		/*
		 * XXX LRU is completely broken for non-free vnodes.  First
		 * by calling here in mountpoint order, then by moving
		 * unselected vnodes to the end here, and most grossly by
		 * removing the vlruvp() function that was supposed to
		 * maintain the order.  (This function was born broken
		 * since syncer problems prevented it doing anything.)  The
		 * order is closer to LRC (C = Created).
		 *
		 * LRU reclaiming of vnodes seems to have last worked in
		 * FreeBSD-3 where LRU wasn't mentioned under any spelling.
		 * Then there was no hold count, and inactive vnodes were
		 * simply put on the free list in LRU order.  The separate
		 * lists also break LRU.  We prefer to reclaim from the
		 * free list for technical reasons.  This tends to thrash
		 * the free list to keep very unrecently used held vnodes.
		 * The problem is mitigated by keeping the free list large.
		 */
		FUNC7(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
		FUNC5(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
		--count;
		if (!FUNC9(vp))
			goto next_iter;
		/*
		 * If it's been deconstructed already, it's still
		 * referenced, or it exceeds the trigger, skip it.
		 * Also skip free vnodes.  We are trying to make space
		 * to expand the free list, not reduce it.
		 */
		if (vp->v_usecount ||
		    (!reclaim_nc_src && !FUNC1(&vp->v_cache_src)) ||
		    ((vp->v_iflag & VI_FREE) != 0) ||
		    (vp->v_iflag & VI_DOOMED) != 0 || (vp->v_object != NULL &&
		    vp->v_object->resident_page_count > trigger)) {
			FUNC10(vp);
			goto next_iter;
		}
		FUNC3(mp);
		FUNC20(vp);
		if (FUNC11(vp, LK_INTERLOCK|LK_EXCLUSIVE|LK_NOWAIT)) {
			FUNC17(vp);
			goto next_iter_mntunlocked;
		}
		FUNC8(vp);
		/*
		 * v_usecount may have been bumped after VOP_LOCK() dropped
		 * the vnode interlock and before it was locked again.
		 *
		 * It is not necessary to recheck VI_DOOMED because it can
		 * only be set by another thread that holds both the vnode
		 * lock and vnode interlock.  If another thread has the
		 * vnode lock before we get to VOP_LOCK() and obtains the
		 * vnode interlock after VOP_LOCK() drops the vnode
		 * interlock, the other thread will be unable to drop the
		 * vnode lock before our VOP_LOCK() call fails.
		 */
		if (vp->v_usecount ||
		    (!reclaim_nc_src && !FUNC1(&vp->v_cache_src)) ||
		    (vp->v_iflag & VI_FREE) != 0 ||
		    (vp->v_object != NULL &&
		    vp->v_object->resident_page_count > trigger)) {
			FUNC12(vp, 0);
			FUNC18(vp);
			goto next_iter_mntunlocked;
		}
		FUNC0((vp->v_iflag & VI_DOOMED) == 0,
		    ("VI_DOOMED unexpectedly detected in vlrureclaim()"));
		FUNC13(recycles_count, 1);
		FUNC19(vp);
		FUNC12(vp, 0);
		FUNC18(vp);
		done++;
next_iter_mntunlocked:
		if (!FUNC16())
			goto relock_mnt;
		goto yield;
next_iter:
		if (!FUNC16())
			continue;
		FUNC3(mp);
yield:
		FUNC15(PRI_USER);
relock_mnt:
		FUNC2(mp);
	}
	FUNC3(mp);
	FUNC21(mp);
	return done;
}