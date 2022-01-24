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
struct vop_readlink_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct uio {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {int p_flag; } ;
struct pfs_vdata {scalar_t__ pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int /*<<< orphan*/ * pn_fill; int /*<<< orphan*/  pn_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (struct pfs_node*) ; 
 int LK_RETRY ; 
 scalar_t__ NO_PID ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int P_WEXIT ; 
 scalar_t__ VLNK ; 
 int FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  curthread ; 
 struct proc* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pfs_node*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct proc*,struct pfs_node*,struct sbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*) ; 
 scalar_t__ FUNC13 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*) ; 
 int /*<<< orphan*/  FUNC17 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC20(struct vop_readlink_args *va)
{
	struct vnode *vn = va->a_vp;
	struct pfs_vdata *pvd = vn->v_data;
	struct pfs_node *pn = pvd->pvd_pn;
	struct uio *uio = va->a_uio;
	struct proc *proc = NULL;
	char buf[PATH_MAX];
	struct sbuf sb;
	int error, locked;

	FUNC2(("%s", pn->pn_name));
	FUNC9(pn);

	if (vn->v_type != VLNK)
		FUNC1 (EINVAL);
	FUNC0(pn);

	if (pn->pn_fill == NULL)
		FUNC1 (EIO);

	if (pvd->pvd_pid != NO_PID) {
		if ((proc = FUNC8(pvd->pvd_pid)) == NULL)
			FUNC1 (EIO);
		if (proc->p_flag & P_WEXIT) {
			FUNC4(proc);
			FUNC1 (EIO);
		}
		FUNC7(proc);
		FUNC4(proc);
	}
	FUNC18(vn);
	locked = FUNC5(vn);
	FUNC6(vn, 0);

	/* sbuf_new() can't fail with a static buffer */
	FUNC15(&sb, buf, sizeof buf, 0);

	error = FUNC10(curthread, proc, pn, &sb, NULL);

	if (proc != NULL)
		FUNC3(proc);
	FUNC19(vn, locked | LK_RETRY);
	FUNC17(vn);

	if (error) {
		FUNC12(&sb);
		FUNC1 (error);
	}

	if (FUNC13(&sb) != 0) {
		FUNC12(&sb);
		FUNC1 (ENAMETOOLONG);
	}

	error = FUNC16(FUNC11(&sb), FUNC14(&sb), uio);
	FUNC12(&sb);
	FUNC1 (error);
}