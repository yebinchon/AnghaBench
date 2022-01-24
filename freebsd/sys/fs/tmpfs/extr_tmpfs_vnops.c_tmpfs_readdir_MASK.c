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
typedef  int /*<<< orphan*/  u_long ;
struct vop_readdir_args {int* a_eofflag; int* a_ncookies; int /*<<< orphan*/ ** a_cookies; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct tmpfs_node {int /*<<< orphan*/  tn_size; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EJUSTRETURN ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ TMPFS_DIRCOOKIE_EOF ; 
 scalar_t__ VDIR ; 
 struct tmpfs_mount* FUNC0 (int /*<<< orphan*/ ) ; 
 struct tmpfs_node* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tmpfs_mount*,struct tmpfs_node*,struct uio*,int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC6(struct vop_readdir_args *va)
{
	struct vnode *vp;
	struct uio *uio;
	struct tmpfs_mount *tm;
	struct tmpfs_node *node;
	u_long **cookies;
	int *eofflag, *ncookies;
	ssize_t startresid;
	int error, maxcookies;

	vp = va->a_vp;
	uio = va->a_uio;
	eofflag = va->a_eofflag;
	cookies = va->a_cookies;
	ncookies = va->a_ncookies;

	/* This operation only makes sense on directory nodes. */
	if (vp->v_type != VDIR)
		return ENOTDIR;

	maxcookies = 0;
	node = FUNC1(vp);
	tm = FUNC0(vp->v_mount);

	startresid = uio->uio_resid;

	/* Allocate cookies for NFS and compat modules. */
	if (cookies != NULL && ncookies != NULL) {
		maxcookies = FUNC3(node->tn_size,
		    sizeof(struct tmpfs_dirent)) + 2;
		*cookies = FUNC4(maxcookies * sizeof(**cookies), M_TEMP,
		    M_WAITOK);
		*ncookies = 0;
	}

	if (cookies == NULL)
		error = FUNC5(tm, node, uio, 0, NULL, NULL);
	else
		error = FUNC5(tm, node, uio, maxcookies, *cookies,
		    ncookies);

	/* Buffer was filled without hitting EOF. */
	if (error == EJUSTRETURN)
		error = (uio->uio_resid != startresid) ? 0 : EINVAL;

	if (error != 0 && cookies != NULL && ncookies != NULL) {
		FUNC2(*cookies, M_TEMP);
		*cookies = NULL;
		*ncookies = 0;
	}

	if (eofflag != NULL)
		*eofflag =
		    (error == 0 && uio->uio_offset == TMPFS_DIRCOOKIE_EOF);

	return error;
}