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
struct vop_read_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int /*<<< orphan*/  pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_flags; int /*<<< orphan*/ * pn_fill; int /*<<< orphan*/  pn_name; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct pfs_node*) ; 
 int LK_RETRY ; 
 scalar_t__ MAXPHYS ; 
 scalar_t__ OFF_MAX ; 
 int PFS_RAWRD ; 
 int PFS_RD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC8 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct pfs_node*,int /*<<< orphan*/ ,struct proc**) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct proc*,struct pfs_node*,struct sbuf*,struct uio*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*) ; 
 scalar_t__ FUNC13 (struct sbuf*) ; 
 scalar_t__ FUNC14 (struct sbuf*) ; 
 struct sbuf* FUNC15 (struct sbuf*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,scalar_t__,struct uio*) ; 
 int /*<<< orphan*/  FUNC17 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC20(struct vop_read_args *va)
{
	struct vnode *vn = va->a_vp;
	struct pfs_vdata *pvd = vn->v_data;
	struct pfs_node *pn = pvd->pvd_pn;
	struct uio *uio = va->a_uio;
	struct proc *proc;
	struct sbuf *sb = NULL;
	int error, locked;
	off_t buflen;

	FUNC2(("%s", pn->pn_name));
	FUNC8(pn);

	if (vn->v_type != VREG)
		FUNC1 (EINVAL);
	FUNC0(pn);

	if (!(pn->pn_flags & PFS_RD))
		FUNC1 (EBADF);

	if (pn->pn_fill == NULL)
		FUNC1 (EIO);

	/*
	 * This is necessary because either process' privileges may
	 * have changed since the open() call.
	 */
	if (!FUNC9(curthread, pn, pvd->pvd_pid, &proc))
		FUNC1 (EIO);
	if (proc != NULL) {
		FUNC7(proc);
		FUNC4(proc);
	}

	FUNC18(vn);
	locked = FUNC5(vn);
	FUNC6(vn, 0);

	if (pn->pn_flags & PFS_RAWRD) {
		FUNC2(("%zd resid", uio->uio_resid));
		error = FUNC10(curthread, proc, pn, NULL, uio);
		FUNC2(("%zd resid", uio->uio_resid));
		goto ret;
	}

	if (uio->uio_resid < 0 || uio->uio_offset < 0 ||
	    uio->uio_resid > OFF_MAX - uio->uio_offset) {
		error = EINVAL;
		goto ret;
	}
	buflen = uio->uio_offset + uio->uio_resid;
	if (buflen > MAXPHYS)
		buflen = MAXPHYS;

	sb = FUNC15(sb, NULL, buflen + 1, 0);
	if (sb == NULL) {
		error = EIO;
		goto ret;
	}

	error = FUNC10(curthread, proc, pn, sb, uio);

	if (error) {
		FUNC12(sb);
		goto ret;
	}

	/*
	 * XXX: If the buffer overflowed, sbuf_len() will not return
	 * the data length. Then just use the full length because an
	 * overflowed sbuf must be full.
	 */
	if (FUNC13(sb) == 0)
		buflen = FUNC14(sb);
	error = FUNC16(FUNC11(sb), buflen, uio);
	FUNC12(sb);
ret:
	FUNC19(vn, locked | LK_RETRY);
	FUNC17(vn);
	if (proc != NULL)
		FUNC3(proc);
	FUNC1 (error);
}