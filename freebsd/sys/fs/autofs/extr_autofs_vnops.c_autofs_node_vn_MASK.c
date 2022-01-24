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
struct vnode {int v_iflag; struct autofs_node* v_data; int /*<<< orphan*/  v_vflag; int /*<<< orphan*/  v_type; } ;
struct mount {int dummy; } ;
struct autofs_node {int /*<<< orphan*/  an_vnode_lock; struct vnode* an_vnode; int /*<<< orphan*/ * an_parent; int /*<<< orphan*/  an_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  VDIR ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  VV_ROOT ; 
 int /*<<< orphan*/  autofs_vnodeops ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC5 (char*,struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 int FUNC6 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int FUNC10 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

int
FUNC13(struct autofs_node *anp, struct mount *mp, int flags,
    struct vnode **vpp)
{
	struct vnode *vp;
	int error;

	FUNC0(anp->an_mount);

	FUNC7(&anp->an_vnode_lock);

	vp = anp->an_vnode;
	if (vp != NULL) {
		error = FUNC10(vp, flags | LK_RETRY, curthread);
		if (error != 0) {
			FUNC2("vget failed with error %d", error);
			FUNC8(&anp->an_vnode_lock);
			return (error);
		}
		if (vp->v_iflag & VI_DOOMED) {
			/*
			 * We got forcibly unmounted.
			 */
			FUNC1("doomed vnode");
			FUNC8(&anp->an_vnode_lock);
			FUNC12(vp);

			return (ENOENT);
		}

		*vpp = vp;
		FUNC8(&anp->an_vnode_lock);
		return (0);
	}

	error = FUNC5("autofs", mp, &autofs_vnodeops, &vp);
	if (error != 0) {
		FUNC8(&anp->an_vnode_lock);
		return (error);
	}

	error = FUNC11(vp, LK_EXCLUSIVE | LK_RETRY);
	if (error != 0) {
		FUNC8(&anp->an_vnode_lock);
		FUNC9(vp);
		return (error);
	}

	vp->v_type = VDIR;
	if (anp->an_parent == NULL)
		vp->v_vflag |= VV_ROOT;
	vp->v_data = anp;

	FUNC4(vp);

	error = FUNC6(vp, mp);
	if (error != 0) {
		FUNC1("insmntque() failed with error %d", error);
		FUNC8(&anp->an_vnode_lock);
		return (error);
	}

	FUNC3(anp->an_vnode == NULL, ("lost race"));
	anp->an_vnode = vp;

	FUNC8(&anp->an_vnode_lock);

	*vpp = vp;
	return (0);
}