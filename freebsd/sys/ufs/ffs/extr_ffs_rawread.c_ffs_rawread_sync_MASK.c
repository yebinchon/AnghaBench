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
typedef  int /*<<< orphan*/ * vm_object_t ;
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; } ;
struct vnode {int v_iflag; struct bufobj v_bufobj; int /*<<< orphan*/ * v_object; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int EIO ; 
 scalar_t__ LK_DOWNGRADE ; 
 scalar_t__ LK_EXCLUSIVE ; 
 scalar_t__ LK_UPGRADE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  OBJPC_SYNC ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_NOWAIT ; 
 int /*<<< orphan*/  V_WAIT ; 
 int FUNC9 (struct bufobj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mount*) ; 
 scalar_t__ FUNC15 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct vnode *vp)
{
	int error;
	int upgraded;
	struct bufobj *bo;
	struct mount *mp;
	vm_object_t obj;

	/* Check for dirty mmap, pending writes and dirty buffers */
	bo = &vp->v_bufobj;
	FUNC0(bo);
	FUNC2(vp);
	if (bo->bo_numoutput > 0 ||
	    bo->bo_dirty.bv_cnt > 0 ||
	    ((obj = vp->v_object) != NULL &&
	     FUNC12(obj))) {
		FUNC3(vp);
		FUNC1(bo);
		
		if (FUNC15(vp, &mp, V_NOWAIT) != 0) {
			if (FUNC6(vp) != LK_EXCLUSIVE)
				upgraded = 1;
			else
				upgraded = 0;
			FUNC8(vp, 0);
			(void) FUNC15(vp, &mp, V_WAIT);
			FUNC7(vp, LK_EXCLUSIVE);
		} else if (FUNC6(vp) != LK_EXCLUSIVE) {
			upgraded = 1;
			/* Upgrade to exclusive lock, this might block */
			FUNC7(vp, LK_UPGRADE);
		} else
			upgraded = 0;
			
		
		FUNC2(vp);
		/* Check if vnode was reclaimed while unlocked. */
		if ((vp->v_iflag & VI_DOOMED) != 0) {
			FUNC3(vp);
			if (upgraded != 0)
				FUNC7(vp, LK_DOWNGRADE);
			FUNC14(mp);
			return (EIO);
		}
		/* Attempt to msync mmap() regions to clean dirty mmap */ 
		if ((obj = vp->v_object) != NULL &&
		    FUNC12(obj)) {
			FUNC3(vp);
			FUNC4(obj);
			FUNC13(obj, 0, 0, OBJPC_SYNC);
			FUNC5(obj);
		} else
			FUNC3(vp);

		/* Wait for pending writes to complete */
		FUNC0(bo);
		error = FUNC9(&vp->v_bufobj, 0, 0);
		if (error != 0) {
			/* XXX: can't happen with a zero timeout ??? */
			FUNC1(bo);
			if (upgraded != 0)
				FUNC7(vp, LK_DOWNGRADE);
			FUNC14(mp);
			return (error);
		}
		/* Flush dirty buffers */
		if (bo->bo_dirty.bv_cnt > 0) {
			FUNC1(bo);
			if ((error = FUNC10(vp, MNT_WAIT, 0)) != 0) {
				if (upgraded != 0)
					FUNC7(vp, LK_DOWNGRADE);
				FUNC14(mp);
				return (error);
			}
			FUNC0(bo);
			if (bo->bo_numoutput > 0 || bo->bo_dirty.bv_cnt > 0)
				FUNC11("ffs_rawread_sync: dirty bufs");
		}
		FUNC1(bo);
		if (upgraded != 0)
			FUNC7(vp, LK_DOWNGRADE);
		FUNC14(mp);
	} else {
		FUNC3(vp);
		FUNC1(bo);
	}
	return 0;
}