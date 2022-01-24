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
typedef  scalar_t__ u_quad_t ;
struct TYPE_2__ {int bo_bsize; } ;
struct vnode {TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct nfsnode {scalar_t__ n_size; } ;
struct buf {scalar_t__ b_dirtyoff; scalar_t__ b_bcount; scalar_t__ b_dirtyend; int /*<<< orphan*/  b_flags; } ;
typedef  int daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_RELBUF ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 struct nfsnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 struct buf* FUNC4 (struct vnode*,int,int,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,scalar_t__) ; 
 int FUNC6 (struct vnode*,scalar_t__,int) ; 

int
FUNC7(struct vnode *vp, struct thread *td, u_quad_t nsize)
{
	struct nfsnode *np = FUNC2(vp);
	u_quad_t tsize;
	int biosize = vp->v_bufobj.bo_bsize;
	int error = 0;

	FUNC0(np);
	tsize = np->n_size;
	np->n_size = nsize;
	FUNC1(np);

	if (nsize < tsize) {
		struct buf *bp;
		daddr_t lbn;
		int bufsize;

		/*
		 * vtruncbuf() doesn't get the buffer overlapping the
		 * truncation point.  We may have a B_DELWRI and/or B_CACHE
		 * buffer that now needs to be truncated.
		 */
		error = FUNC6(vp, nsize, biosize);
		lbn = nsize / biosize;
		bufsize = nsize - (lbn * biosize);
		bp = FUNC4(vp, lbn, bufsize, td);
		if (!bp)
			return EINTR;
		if (bp->b_dirtyoff > bp->b_bcount)
			bp->b_dirtyoff = bp->b_bcount;
		if (bp->b_dirtyend > bp->b_bcount)
			bp->b_dirtyend = bp->b_bcount;
		bp->b_flags |= B_RELBUF;  /* don't leave garbage around */
		FUNC3(bp);
	} else {
		FUNC5(vp, nsize);
	}
	return(error);
}