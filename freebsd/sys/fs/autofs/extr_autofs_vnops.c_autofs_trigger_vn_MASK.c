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
struct vnode {int v_iflag; int /*<<< orphan*/ * v_mountedhere; struct autofs_node* v_data; } ;
struct autofs_node {int an_cached; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOENT ; 
 int LK_RETRY ; 
 int FUNC2 (int /*<<< orphan*/ *,int,struct vnode**) ; 
 int VI_DOOMED ; 
 int FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* autofs_softc ; 
 int FUNC5 (struct autofs_node*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

__attribute__((used)) static int
FUNC11(struct vnode *vp, const char *path, int pathlen,
    struct vnode **newvp)
{
	struct autofs_node *anp;
	int error, lock_flags;

	anp = vp->v_data;

	/*
	 * Release the vnode lock, so that other operations, in partcular
	 * mounting a filesystem on top of it, can proceed.  Increase use
	 * count, to prevent the vnode from being deallocated and to prevent
	 * filesystem from being unmounted.
	 */
	lock_flags = FUNC3(vp);
	FUNC9(vp);
	FUNC4(vp, 0);

	FUNC6(&autofs_softc->sc_lock);

	/*
	 * XXX: Workaround for mounting the same thing multiple times; revisit.
	 */
	if (vp->v_mountedhere != NULL) {
		error = 0;
		goto mounted;
	}

	error = FUNC5(anp, path, pathlen);
mounted:
	FUNC7(&autofs_softc->sc_lock);
	FUNC8(vp, lock_flags | LK_RETRY);
	FUNC10(vp);
	if ((vp->v_iflag & VI_DOOMED) != 0) {
		FUNC0("VI_DOOMED");
		return (ENOENT);
	}

	if (error != 0)
		return (error);

	if (vp->v_mountedhere == NULL) {
		*newvp = NULL;
		return (0);
	} else {
		/*
		 * If the operation that succeeded was mount, then mark
		 * the node as non-cached.  Otherwise, if someone unmounts
		 * the filesystem before the cache times out, we will fail
		 * to trigger.
		 */
		anp->an_cached = false;
	}

	error = FUNC2(vp->v_mountedhere, lock_flags, newvp);
	if (error != 0) {
		FUNC1("VFS_ROOT() failed with error %d", error);
		return (error);
	}

	return (0);
}