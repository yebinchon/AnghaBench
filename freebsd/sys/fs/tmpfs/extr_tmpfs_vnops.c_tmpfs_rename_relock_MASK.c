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
struct vnode {struct mount* v_mount; } ;
struct tmpfs_dirent {int /*<<< orphan*/  td_node; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int ISDOTDOT ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int FUNC2 (struct mount*,int /*<<< orphan*/ ,int,struct vnode**) ; 
 struct tmpfs_dirent* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct componentname*) ; 
 int tmpfs_rename_restarts ; 
 int FUNC4 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

__attribute__((used)) static int
FUNC6(struct vnode *fdvp, struct vnode **fvpp,
    struct vnode *tdvp, struct vnode **tvpp,
    struct componentname *fcnp, struct componentname *tcnp)
{
	struct vnode *nvp;
	struct mount *mp;
	struct tmpfs_dirent *de;
	int error, restarts = 0;

	FUNC0(tdvp, 0);
	if (*tvpp != NULL && *tvpp != tdvp)
		FUNC0(*tvpp, 0);
	mp = fdvp->v_mount;

relock:
	restarts += 1;
	error = FUNC4(fdvp, LK_EXCLUSIVE);
	if (error)
		goto releout;
	if (FUNC4(tdvp, LK_EXCLUSIVE | LK_NOWAIT) != 0) {
		FUNC0(fdvp, 0);
		error = FUNC4(tdvp, LK_EXCLUSIVE);
		if (error)
			goto releout;
		FUNC0(tdvp, 0);
		goto relock;
	}
	/*
	 * Re-resolve fvp to be certain it still exists and fetch the
	 * correct vnode.
	 */
	de = FUNC3(FUNC1(fdvp), NULL, fcnp);
	if (de == NULL) {
		FUNC0(fdvp, 0);
		FUNC0(tdvp, 0);
		if ((fcnp->cn_flags & ISDOTDOT) != 0 ||
		    (fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.'))
			error = EINVAL;
		else
			error = ENOENT;
		goto releout;
	}
	error = FUNC2(mp, de->td_node, LK_EXCLUSIVE | LK_NOWAIT, &nvp);
	if (error != 0) {
		FUNC0(fdvp, 0);
		FUNC0(tdvp, 0);
		if (error != EBUSY)
			goto releout;
		error = FUNC2(mp, de->td_node, LK_EXCLUSIVE, &nvp);
		if (error != 0)
			goto releout;
		FUNC0(nvp, 0);
		/*
		 * Concurrent rename race.
		 */
		if (nvp == tdvp) {
			FUNC5(nvp);
			error = EINVAL;
			goto releout;
		}
		FUNC5(*fvpp);
		*fvpp = nvp;
		goto relock;
	}
	FUNC5(*fvpp);
	*fvpp = nvp;
	FUNC0(*fvpp, 0);
	/*
	 * Re-resolve tvp and acquire the vnode lock if present.
	 */
	de = FUNC3(FUNC1(tdvp), NULL, tcnp);
	/*
	 * If tvp disappeared we just carry on.
	 */
	if (de == NULL && *tvpp != NULL) {
		FUNC5(*tvpp);
		*tvpp = NULL;
	}
	/*
	 * Get the tvp ino if the lookup succeeded.  We may have to restart
	 * if the non-blocking acquire fails.
	 */
	if (de != NULL) {
		nvp = NULL;
		error = FUNC2(mp, de->td_node,
		    LK_EXCLUSIVE | LK_NOWAIT, &nvp);
		if (*tvpp != NULL)
			FUNC5(*tvpp);
		*tvpp = nvp;
		if (error != 0) {
			FUNC0(fdvp, 0);
			FUNC0(tdvp, 0);
			if (error != EBUSY)
				goto releout;
			error = FUNC2(mp, de->td_node, LK_EXCLUSIVE,
			    &nvp);
			if (error != 0)
				goto releout;
			FUNC0(nvp, 0);
			/*
			 * fdvp contains fvp, thus tvp (=fdvp) is not empty.
			 */
			if (nvp == fdvp) {
				error = ENOTEMPTY;
				goto releout;
			}
			goto relock;
		}
	}
	tmpfs_rename_restarts += restarts;

	return (0);

releout:
	FUNC5(fdvp);
	FUNC5(*fvpp);
	FUNC5(tdvp);
	if (*tvpp != NULL)
		FUNC5(*tvpp);
	tmpfs_rename_restarts += restarts;

	return (error);
}