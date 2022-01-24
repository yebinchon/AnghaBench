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
struct vnode {int dummy; } ;
struct fuse_dispatcher {scalar_t__ indata; } ;
struct componentname {int cn_namelen; int /*<<< orphan*/  cn_nameptr; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_thread; } ;
typedef  int nlink_t ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_3__ {int /*<<< orphan*/  va_nlink; } ;
struct TYPE_4__ {TYPE_1__ cached_attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FN_CTIMECHANGE ; 
 scalar_t__ VDIR ; 
 TYPE_2__* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_dispatcher*,int,struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct vnode*) ; 

int
FUNC11(struct vnode *dvp,
    struct vnode *vp,
    struct componentname *cnp,
    enum fuse_opcode op)
{
	struct fuse_dispatcher fdi;
	nlink_t nlink;
	int err = 0;

	FUNC3(&fdi, cnp->cn_namelen + 1);
	FUNC4(&fdi, op, dvp, cnp->cn_thread, cnp->cn_cred);

	FUNC9(fdi.indata, cnp->cn_nameptr, cnp->cn_namelen);
	((char *)fdi.indata)[cnp->cn_namelen] = '\0';

	err = FUNC5(&fdi);
	FUNC2(&fdi);

	if (err)
		return (err);

	/* 
	 * Access the cached nlink even if the attr cached has expired.  If
	 * it's inaccurate, the worst that will happen is:
	 * 1) We'll recycle the vnode even though the file has another link we
	 *    don't know about, costing a bit of cpu time, or
	 * 2) We won't recycle the vnode even though all of its links are gone.
	 *    It will linger around until vnlru reclaims it, costing a bit of
	 *    temporary memory.
	 */
	nlink = FUNC0(vp)->cached_attrs.va_nlink--;

	/* 
	 * Purge the parent's attribute cache because the daemon
	 * should've updated its mtime and ctime.
	 */
	FUNC7(dvp);

	/* NB: nlink could be zero if it was never cached */
	if (nlink <= 1 || FUNC10(vp) == VDIR) {
		FUNC6(vp);
	} else {
		FUNC1(vp);
		FUNC8(vp, FN_CTIMECHANGE);
	}

	return err;
}