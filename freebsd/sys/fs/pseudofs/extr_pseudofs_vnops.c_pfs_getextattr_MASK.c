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
struct vop_getextattr_args {int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_size; int /*<<< orphan*/  a_uio; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_attrnamespace; struct vnode* a_vp; } ;
struct vnode {struct pfs_vdata* v_data; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int /*<<< orphan*/  pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int /*<<< orphan*/ * pn_getextattr; int /*<<< orphan*/  pn_name; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pfs_node*,int /*<<< orphan*/ ,struct proc**) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct proc*,struct pfs_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vop_getextattr_args *va)
{
	struct vnode *vn = va->a_vp;
	struct pfs_vdata *pvd = vn->v_data;
	struct pfs_node *pn = pvd->pvd_pn;
	struct proc *proc;
	int error;

	FUNC1(("%s", pn->pn_name));
	FUNC3(pn);

	/*
	 * This is necessary because either process' privileges may
	 * have changed since the open() call.
	 */
	if (!FUNC4(curthread, pn, pvd->pvd_pid, &proc))
		FUNC0 (EIO);

	if (pn->pn_getextattr == NULL)
		error = EOPNOTSUPP;
	else
		error = FUNC5(curthread, proc, pn,
		    va->a_attrnamespace, va->a_name, va->a_uio,
		    va->a_size, va->a_cred);

	if (proc != NULL)
		FUNC2(proc);

	FUNC0 (error);
}