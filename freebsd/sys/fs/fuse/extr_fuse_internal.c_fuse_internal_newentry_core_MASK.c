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
struct fuse_entry_out {int /*<<< orphan*/  attr_valid_nsec; int /*<<< orphan*/  attr_valid; int /*<<< orphan*/  attr; int /*<<< orphan*/  nodeid; } ;
struct fuse_dispatcher {struct fuse_entry_out* answ; } ;
struct componentname {int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_thread; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 int FUNC0 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fuse_entry_out*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int FUNC5 (struct mount*,struct fuse_entry_out*,int /*<<< orphan*/ ,struct vnode*,struct vnode**,struct componentname*,int) ; 
 struct mount* FUNC6 (struct vnode*) ; 

int
FUNC7(struct vnode *dvp,
    struct vnode **vpp,
    struct componentname *cnp,
    enum vtype vtyp,
    struct fuse_dispatcher *fdip)
{
	int err = 0;
	struct fuse_entry_out *feo;
	struct mount *mp = FUNC6(dvp);

	if ((err = FUNC0(fdip))) {
		return err;
	}
	feo = fdip->answ;

	if ((err = FUNC2(feo, vtyp))) {
		return err;
	}
	err = FUNC5(mp, feo, feo->nodeid, dvp, vpp, cnp, vtyp);
	if (err) {
		FUNC3(mp, cnp->cn_thread, cnp->cn_cred,
		    feo->nodeid, 1);
		return err;
	}

	/* 
	 * Purge the parent's attribute cache because the daemon should've
	 * updated its mtime and ctime
	 */
	FUNC4(dvp);

	FUNC1(*vpp, &feo->attr, feo->attr_valid,
		feo->attr_valid_nsec, NULL);

	return err;
}