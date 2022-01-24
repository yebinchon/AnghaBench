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
struct vop_advlock_args {int /*<<< orphan*/  a_flags; int /*<<< orphan*/  a_fl; int /*<<< orphan*/  a_op; int /*<<< orphan*/  a_id; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node_status {scalar_t__ uns_lower_opencnt; int /*<<< orphan*/  uns_lower_openmode; int /*<<< orphan*/  uns_upper_opencnt; } ;
struct unionfs_node {int /*<<< orphan*/  un_lowervp; struct vnode* un_uppervp; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int LK_EXCLUSIVE ; 
 int /*<<< orphan*/  LK_RELEASE ; 
 int LK_RETRY ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct unionfs_node* FUNC6 (struct vnode*) ; 
 struct thread* curthread ; 
 int FUNC7 (struct unionfs_node*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct unionfs_node*,struct thread*,struct unionfs_node_status**) ; 
 int /*<<< orphan*/  FUNC9 (struct unionfs_node*,struct unionfs_node_status*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC11(struct vop_advlock_args *ap)
{
	int error;
	struct unionfs_node *unp;
	struct unionfs_node_status *unsp;
	struct vnode   *vp;
	struct vnode   *uvp;
	struct thread  *td;

	FUNC1("unionfs_advlock: enter\n");

	FUNC0(ap->a_vp);

	vp = ap->a_vp;
	td = curthread;

	FUNC10(vp, LK_EXCLUSIVE | LK_RETRY);

	unp = FUNC6(ap->a_vp);
	uvp = unp->un_uppervp;

	if (uvp == NULLVP) {
		error = FUNC7(unp, 1, td->td_ucred, td);
		if (error != 0)
			goto unionfs_advlock_abort;
		uvp = unp->un_uppervp;

		FUNC8(unp, td, &unsp);
		if (unsp->uns_lower_opencnt > 0) {
			/* try reopen the vnode */
			error = FUNC4(uvp, unsp->uns_lower_openmode,
				td->td_ucred, td, NULL);
			if (error)
				goto unionfs_advlock_abort;
			unsp->uns_upper_opencnt++;
			FUNC3(unp->un_lowervp, unsp->uns_lower_openmode, td->td_ucred, td);
			unsp->uns_lower_opencnt--;
		} else
			FUNC9(unp, unsp);
	}

	FUNC5(vp, LK_RELEASE);

	error = FUNC2(uvp, ap->a_id, ap->a_op, ap->a_fl, ap->a_flags);

	FUNC1("unionfs_advlock: leave (%d)\n", error);

	return error;

unionfs_advlock_abort:
	FUNC5(vp, LK_RELEASE);

	FUNC1("unionfs_advlock: leave (%d)\n", error);

	return error;
}