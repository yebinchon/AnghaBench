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
struct vop_advise_args {int a_advice; int /*<<< orphan*/  a_end; int /*<<< orphan*/  a_start; struct vnode* a_vp; } ;
struct bufobj {int bo_bsize; int /*<<< orphan*/  bo_dirty; int /*<<< orphan*/  bo_clean; } ;
struct vnode {int v_iflag; struct bufobj v_bufobj; int /*<<< orphan*/ * v_object; } ;
typedef  int off_t ;
typedef  int daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int EINVAL ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  POSIX_FADV_DONTNEED 129 
#define  POSIX_FADV_WILLNEED 128 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct bufobj*,int,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int) ; 

int
FUNC13(struct vop_advise_args *ap)
{
	struct vnode *vp;
	struct bufobj *bo;
	daddr_t startn, endn;
	off_t bstart, bend, start, end;
	int bsize, error;

	vp = ap->a_vp;
	switch (ap->a_advice) {
	case POSIX_FADV_WILLNEED:
		/*
		 * Do nothing for now.  Filesystems should provide a
		 * custom method which starts an asynchronous read of
		 * the requested region.
		 */
		error = 0;
		break;
	case POSIX_FADV_DONTNEED:
		error = 0;
		FUNC12(vp, LK_EXCLUSIVE | LK_RETRY);
		if (vp->v_iflag & VI_DOOMED) {
			FUNC5(vp, 0);
			break;
		}

		/*
		 * Round to block boundaries (and later possibly further to
		 * page boundaries).  Applications cannot reasonably be aware  
		 * of the boundaries, and the rounding must be to expand at
		 * both extremities to cover enough.  It still doesn't cover
		 * read-ahead.  For partial blocks, this gives unnecessary
		 * discarding of buffers but is efficient enough since the
		 * pages usually remain in VMIO for some time.
		 */
		bsize = vp->v_bufobj.bo_bsize;
		bstart = FUNC8(ap->a_start, bsize);
		bend = FUNC9(ap->a_end, bsize);

		/*
		 * Deactivate pages in the specified range from the backing VM
		 * object.  Pages that are resident in the buffer cache will
		 * remain wired until their corresponding buffers are released
		 * below.
		 */
		if (vp->v_object != NULL) {
			start = FUNC10(bstart);
			end = FUNC7(bend);
			FUNC3(vp->v_object);
			FUNC11(vp->v_object, FUNC2(start),
			    FUNC2(end));
			FUNC4(vp->v_object);
		}

		bo = &vp->v_bufobj;
		FUNC0(bo);
		startn = bstart / bsize;
		endn = bend / bsize;
		error = FUNC6(&bo->bo_clean, bo, startn, endn);
		if (error == 0)
			error = FUNC6(&bo->bo_dirty, bo, startn, endn);
		FUNC1(bo);
		FUNC5(vp, 0);
		break;
	default:
		error = EINVAL;
		break;
	}
	return (error);
}