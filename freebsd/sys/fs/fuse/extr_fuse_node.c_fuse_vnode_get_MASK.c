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
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_entry_out {scalar_t__ entry_valid; scalar_t__ entry_valid_nsec; int /*<<< orphan*/  generation; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; struct thread* cn_thread; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;
struct TYPE_2__ {int /*<<< orphan*/  nlookup; int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int ISDOTDOT ; 
 int MAKEENTRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,struct vnode*,struct componentname*,struct timespec*,int /*<<< orphan*/ *) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_entry_out*,struct timespec*) ; 
 int FUNC5 (struct mount*,struct thread*,int /*<<< orphan*/ ,int,struct vnode**) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,struct vnode*) ; 

int
FUNC7(struct mount *mp,
    struct fuse_entry_out *feo,
    uint64_t nodeid,
    struct vnode *dvp,
    struct vnode **vpp,
    struct componentname *cnp,
    enum vtype vtyp)
{
	struct thread *td = (cnp != NULL ? cnp->cn_thread : curthread);
	/* 
	 * feo should only be NULL for the root directory, which (when libfuse
	 * is used) always has generation 0
	 */
	uint64_t generation = feo ? feo->generation : 0;
	int err = 0;

	err = FUNC5(mp, td, nodeid, vtyp, vpp);
	if (err) {
		return err;
	}
	if (dvp != NULL) {
		FUNC1(cnp && (cnp->cn_flags & ISDOTDOT) == 0);
		FUNC1(cnp &&
			!(cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.'));
		FUNC6(*vpp, dvp);
	}
	if (dvp != NULL && cnp != NULL && (cnp->cn_flags & MAKEENTRY) != 0 &&
	    feo != NULL &&
	    (feo->entry_valid != 0 || feo->entry_valid_nsec != 0)) {
		struct timespec timeout;

		FUNC0(*vpp, "fuse_vnode_get");
		FUNC0(dvp, "fuse_vnode_get");

		FUNC4(feo, &timeout);
		FUNC3(dvp, *vpp, cnp, &timeout, NULL);
	}

	FUNC2(*vpp)->generation = generation;
	/*
	 * In userland, libfuse uses cached lookups for dot and dotdot entries,
	 * thus it does not really bump the nlookup counter for forget.
	 * Follow the same semantic and avoid the bump in order to keep
	 * nlookup counters consistent.
	 */
	if (cnp == NULL || ((cnp->cn_flags & ISDOTDOT) == 0 &&
	    (cnp->cn_namelen != 1 || cnp->cn_nameptr[0] != '.')))
		FUNC2(*vpp)->nlookup++;

	return 0;
}