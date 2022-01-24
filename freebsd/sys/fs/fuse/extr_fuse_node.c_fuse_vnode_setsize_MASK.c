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
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_size; } ;
struct TYPE_2__ {scalar_t__ va_size; } ;
struct fuse_vnode_data {TYPE_1__ cached_attrs; } ;
struct buf {int b_flags; int /*<<< orphan*/  b_dirtyend; } ;
typedef  scalar_t__ off_t ;
typedef  size_t daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int B_CACHE ; 
 int B_VMIO ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PCATCH ; 
 struct fuse_vnode_data* FUNC3 (struct vnode*) ; 
 struct vattr* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 size_t FUNC6 (struct vnode*) ; 
 struct buf* FUNC7 (struct vnode*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,scalar_t__) ; 
 int FUNC10 (struct vnode*,scalar_t__,size_t) ; 

int
FUNC11(struct vnode *vp, off_t newsize)
{
	struct fuse_vnode_data *fvdat = FUNC3(vp);
	struct vattr *attrs;
	off_t oldsize;
	size_t iosize;
	struct buf *bp = NULL;
	int err = 0;

	FUNC0(vp, "fuse_vnode_setsize");

	iosize = FUNC6(vp);
	oldsize = fvdat->cached_attrs.va_size;
	fvdat->cached_attrs.va_size = newsize;
	if ((attrs = FUNC4(vp)) != NULL)
		attrs->va_size = newsize;

	if (newsize < oldsize) {
		daddr_t lbn;

		err = FUNC10(vp, newsize, FUNC6(vp));
		if (err)
			goto out;
		if (newsize % iosize == 0)
			goto out;
		/* 
		 * Zero the contents of the last partial block.
		 * Sure seems like vtruncbuf should do this for us.
		 */

		lbn = newsize / iosize;
		bp = FUNC7(vp, lbn, iosize, PCATCH, 0, 0);
		if (!bp) {
			err = EINTR;
			goto out;
		}
		if (!(bp->b_flags & B_CACHE))
			goto out;	/* Nothing to do */
		FUNC2(bp->b_flags & B_VMIO);
		FUNC8(bp);
		bp->b_dirtyend = FUNC1(bp->b_dirtyend, newsize - lbn * iosize);
	}
out:
	if (bp)
		FUNC5(bp);
	FUNC9(vp, newsize);
	return err;
}