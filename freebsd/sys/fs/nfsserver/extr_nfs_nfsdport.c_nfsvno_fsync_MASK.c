#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_quad_t ;
typedef  int u_int64_t ;
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; scalar_t__ v_object; TYPE_2__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct buf {int b_flags; } ;
typedef  int daddr_t ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {int mnt_kern_flag; TYPE_1__ mnt_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufobj*) ; 
 scalar_t__ FUNC3 (struct buf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int B_ASYNC ; 
 int B_DELWRI ; 
 int B_INVAL ; 
 scalar_t__ ENOLCK ; 
 int LK_EXCLUSIVE ; 
 int LK_INTERLOCK ; 
 int LK_SLEEPFAIL ; 
 int MAX_COMMIT_COUNT ; 
 int MNTK_USES_BCACHE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  OBJPC_SYNC ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (struct vnode*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct buf*) ; 
 struct buf* FUNC11 (struct bufobj*,int) ; 
 int /*<<< orphan*/  nfs_commit_blks ; 
 int /*<<< orphan*/  nfs_commit_miss ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 

int
FUNC14(struct vnode *vp, u_int64_t off, int cnt, struct ucred *cred,
    struct thread *td)
{
	int error = 0;

	/*
	 * RFC 1813 3.3.21: if count is 0, a flush from offset to the end of
	 * file is done.  At this time VOP_FSYNC does not accept offset and
	 * byte count parameters so call VOP_FSYNC the whole file for now.
	 * The same is true for NFSv4: RFC 3530 Sec. 14.2.3.
	 * File systems that do not use the buffer cache (as indicated
	 * by MNTK_USES_BCACHE not being set) must use VOP_FSYNC().
	 */
	if (cnt == 0 || cnt > MAX_COMMIT_COUNT ||
	    (vp->v_mount->mnt_kern_flag & MNTK_USES_BCACHE) == 0) {
		/*
		 * Give up and do the whole thing
		 */
		if (vp->v_object && FUNC12(vp->v_object)) {
			FUNC6(vp->v_object);
			FUNC13(vp->v_object, 0, 0, OBJPC_SYNC);
			FUNC7(vp->v_object);
		}
		error = FUNC8(vp, MNT_WAIT, td);
	} else {
		/*
		 * Locate and synchronously write any buffers that fall
		 * into the requested range.  Note:  we are assuming that
		 * f_iosize is a power of 2.
		 */
		int iosize = vp->v_mount->mnt_stat.f_iosize;
		int iomask = iosize - 1;
		struct bufobj *bo;
		daddr_t lblkno;

		/*
		 * Align to iosize boundary, super-align to page boundary.
		 */
		if (off & iomask) {
			cnt += off & iomask;
			off &= ~(u_quad_t)iomask;
		}
		if (off & PAGE_MASK) {
			cnt += off & PAGE_MASK;
			off &= ~(u_quad_t)PAGE_MASK;
		}
		lblkno = off / iosize;

		if (vp->v_object && FUNC12(vp->v_object)) {
			FUNC6(vp->v_object);
			FUNC13(vp->v_object, off, off + cnt,
			    OBJPC_SYNC);
			FUNC7(vp->v_object);
		}

		bo = &vp->v_bufobj;
		FUNC0(bo);
		while (cnt > 0) {
			struct buf *bp;

			/*
			 * If we have a buffer and it is marked B_DELWRI we
			 * have to lock and write it.  Otherwise the prior
			 * write is assumed to have already been committed.
			 *
			 * gbincore() can return invalid buffers now so we
			 * have to check that bit as well (though B_DELWRI
			 * should not be set if B_INVAL is set there could be
			 * a race here since we haven't locked the buffer).
			 */
			if ((bp = FUNC11(&vp->v_bufobj, lblkno)) != NULL) {
				if (FUNC3(bp, LK_EXCLUSIVE | LK_SLEEPFAIL |
				    LK_INTERLOCK, FUNC1(bo)) == ENOLCK) {
					FUNC0(bo);
					continue; /* retry */
				}
			    	if ((bp->b_flags & (B_DELWRI|B_INVAL)) ==
				    B_DELWRI) {
					FUNC9(bp);
					bp->b_flags &= ~B_ASYNC;
					FUNC10(bp);
					++nfs_commit_miss;
				} else
					FUNC4(bp);
				FUNC0(bo);
			}
			++nfs_commit_blks;
			if (cnt < iosize)
				break;
			cnt -= iosize;
			++lblkno;
		}
		FUNC2(bo);
	}
	FUNC5(error);
	return (error);
}