#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_write_args {int a_ioflag; int /*<<< orphan*/  a_cred; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; int /*<<< orphan*/  uio_td; } ;
struct TYPE_3__ {int /*<<< orphan*/  tn_aobj; } ;
struct tmpfs_node {scalar_t__ tn_size; int tn_status; int tn_mode; TYPE_1__ tn_reg; } ;
typedef  scalar_t__ off_t ;
struct TYPE_4__ {scalar_t__ tm_maxfilesize; } ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int IO_APPEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIV_VFS_RETAINSUGID ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int TMPFS_NODE_ACCESSED ; 
 int TMPFS_NODE_CHANGED ; 
 int TMPFS_NODE_MODIFIED ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 scalar_t__ VREG ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,struct uio*) ; 
 scalar_t__ FUNC7 (struct vnode*,struct uio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct vop_write_args *v)
{
	struct vnode *vp;
	struct uio *uio;
	struct tmpfs_node *node;
	off_t oldsize;
	int error, ioflag;

	vp = v->a_vp;
	uio = v->a_uio;
	ioflag = v->a_ioflag;
	error = 0;
	node = FUNC3(vp);
	oldsize = node->tn_size;

	if (uio->uio_offset < 0 || vp->v_type != VREG)
		return (EINVAL);
	if (uio->uio_resid == 0)
		return (0);
	if (ioflag & IO_APPEND)
		uio->uio_offset = node->tn_size;
	if (uio->uio_offset + uio->uio_resid >
	  FUNC2(vp->v_mount)->tm_maxfilesize)
		return (EFBIG);
	if (FUNC7(vp, uio, uio->uio_td))
		return (EFBIG);
	if (uio->uio_offset + uio->uio_resid > node->tn_size) {
		error = FUNC5(vp, uio->uio_offset + uio->uio_resid,
		    FALSE);
		if (error != 0)
			goto out;
	}

	error = FUNC6(node->tn_reg.tn_aobj, node->tn_size, uio);
	node->tn_status |= TMPFS_NODE_ACCESSED | TMPFS_NODE_MODIFIED |
	    TMPFS_NODE_CHANGED;
	if (node->tn_mode & (S_ISUID | S_ISGID)) {
		if (FUNC4(v->a_cred, PRIV_VFS_RETAINSUGID))
			node->tn_mode &= ~(S_ISUID | S_ISGID);
	}
	if (error != 0)
		(void)FUNC5(vp, oldsize, TRUE);

out:
	FUNC1(FUNC0(error == 0, uio->uio_resid == 0));
	FUNC1(FUNC0(error != 0, oldsize == node->tn_size));

	return (error);
}