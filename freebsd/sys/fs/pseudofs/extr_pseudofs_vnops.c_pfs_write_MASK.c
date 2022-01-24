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
struct vop_write_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct uio {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int /*<<< orphan*/  pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_flags; int /*<<< orphan*/ * pn_fill; int /*<<< orphan*/  pn_name; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct pfs_node*) ; 
 int PFS_RAWWR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int PFS_WR ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC6 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct pfs_node*,int /*<<< orphan*/ ,struct proc**) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct proc*,struct pfs_node*,struct sbuf*,struct uio*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*,struct uio*,int*) ; 

__attribute__((used)) static int
FUNC11(struct vop_write_args *va)
{
	struct vnode *vn = va->a_vp;
	struct pfs_vdata *pvd = vn->v_data;
	struct pfs_node *pn = pvd->pvd_pn;
	struct uio *uio = va->a_uio;
	struct proc *proc;
	struct sbuf sb;
	int error;

	FUNC2(("%s", pn->pn_name));
	FUNC6(pn);

	if (vn->v_type != VREG)
		FUNC1 (EINVAL);
	FUNC0(pn);

	if (!(pn->pn_flags & PFS_WR))
		FUNC1 (EBADF);

	if (pn->pn_fill == NULL)
		FUNC1 (EIO);

	/*
	 * This is necessary because either process' privileges may
	 * have changed since the open() call.
	 */
	if (!FUNC7(curthread, pn, pvd->pvd_pid, &proc))
		FUNC1 (EIO);
	if (proc != NULL) {
		FUNC5(proc);
		FUNC4(proc);
	}

	if (pn->pn_flags & PFS_RAWWR) {
		error = FUNC8(curthread, proc, pn, NULL, uio);
		if (proc != NULL)
			FUNC3(proc);
		FUNC1 (error);
	}

	FUNC10(&sb, uio, &error);
	if (error) {
		if (proc != NULL)
			FUNC3(proc);
		FUNC1 (error);
	}

	error = FUNC8(curthread, proc, pn, &sb, uio);

	FUNC9(&sb);
	if (proc != NULL)
		FUNC3(proc);
	FUNC1 (error);
}