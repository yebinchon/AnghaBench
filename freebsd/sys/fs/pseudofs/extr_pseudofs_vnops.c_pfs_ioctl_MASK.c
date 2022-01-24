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
struct vop_ioctl_args {int /*<<< orphan*/  a_data; int /*<<< orphan*/  a_command; struct vnode* a_vp; } ;
struct vnode {int v_iflag; scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int /*<<< orphan*/  pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int /*<<< orphan*/ * pn_ioctl; int /*<<< orphan*/  pn_name; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int EIO ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (struct pfs_node*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC5 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pfs_node*,int /*<<< orphan*/ ,struct proc**) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct proc*,struct pfs_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC9(struct vop_ioctl_args *va)
{
	struct vnode *vn;
	struct pfs_vdata *pvd;
	struct pfs_node *pn;
	struct proc *proc;
	int error;

	vn = va->a_vp;
	FUNC8(vn, LK_SHARED | LK_RETRY);
	if (vn->v_iflag & VI_DOOMED) {
		FUNC4(vn, 0);
		return (EBADF);
	}
	pvd = vn->v_data;
	pn = pvd->pvd_pn;

	FUNC2(("%s: %lx", pn->pn_name, va->a_command));
	FUNC5(pn);

	if (vn->v_type != VREG) {
		FUNC4(vn, 0);
		FUNC1 (EINVAL);
	}
	FUNC0(pn);

	if (pn->pn_ioctl == NULL) {
		FUNC4(vn, 0);
		FUNC1 (ENOTTY);
	}

	/*
	 * This is necessary because process' privileges may
	 * have changed since the open() call.
	 */
	if (!FUNC6(curthread, pn, pvd->pvd_pid, &proc)) {
		FUNC4(vn, 0);
		FUNC1 (EIO);
	}

	error = FUNC7(curthread, proc, pn, va->a_command, va->a_data);

	if (proc != NULL)
		FUNC3(proc);

	FUNC4(vn, 0);
	FUNC1 (error);
}