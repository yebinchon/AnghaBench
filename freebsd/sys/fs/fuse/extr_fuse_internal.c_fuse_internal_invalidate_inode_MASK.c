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
struct uio {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_notify_inval_inode_out {scalar_t__ ino; scalar_t__ off; } ;
typedef  int /*<<< orphan*/  fniio ;

/* Variables and functions */
 scalar_t__ FUSE_ROOT_ID ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int FUNC0 (struct mount*,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC1 (struct mount*,scalar_t__,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int FUNC4 (struct fuse_notify_inval_inode_out*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

int
FUNC6(struct mount *mp, struct uio *uio)
{
	struct fuse_notify_inval_inode_out fniio;
	struct vnode *vp;
	int err;

	if ((err = FUNC4(&fniio, sizeof(fniio), uio)) != 0)
		return (err);

	if (fniio.ino == FUSE_ROOT_ID)
		err = FUNC0(mp, LK_EXCLUSIVE, &vp);
	else
		err = FUNC1(mp, fniio.ino, LK_SHARED,
			&vp);
	if (err != 0 || vp == NULL)
		return (err);
	/*
	 * XXX we can't check vp's generation because the FUSE invalidate
	 * entry message doesn't include it.  Worse case is that we invalidate
	 * an inode that didn't need to be invalidated.
	 */

	/* 
	 * Flush and invalidate buffers if off >= 0.  Technically we only need
	 * to flush and invalidate the range of offsets [off, off + len), but
	 * for simplicity's sake we do everything.
	 */
	if (fniio.off >= 0)
		FUNC2(vp, curthread);
	FUNC3(vp);
	FUNC5(vp);
	return (0);
}