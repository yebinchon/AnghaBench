#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vop_access_args {int a_accmode; struct ucred* a_cred; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct tmpfs_node {int tn_flags; int /*<<< orphan*/  tn_gid; int /*<<< orphan*/  tn_uid; int /*<<< orphan*/  tn_mode; } ;
typedef  int accmode_t ;
struct TYPE_2__ {int mnt_flag; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int EROFS ; 
 int IMMUTABLE ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  VBLK 134 
#define  VCHR 133 
#define  VDIR 132 
#define  VFIFO 131 
#define  VLNK 130 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 struct tmpfs_node* FUNC2 (struct vnode*) ; 
#define  VREG 129 
#define  VSOCK 128 
 int VWRITE ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ucred*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct vop_access_args *v)
{
	struct vnode *vp = v->a_vp;
	accmode_t accmode = v->a_accmode;
	struct ucred *cred = v->a_cred;

	int error;
	struct tmpfs_node *node;

	FUNC0(FUNC1(vp));

	node = FUNC2(vp);

	switch (vp->v_type) {
	case VDIR:
		/* FALLTHROUGH */
	case VLNK:
		/* FALLTHROUGH */
	case VREG:
		if (accmode & VWRITE && vp->v_mount->mnt_flag & MNT_RDONLY) {
			error = EROFS;
			goto out;
		}
		break;

	case VBLK:
		/* FALLTHROUGH */
	case VCHR:
		/* FALLTHROUGH */
	case VSOCK:
		/* FALLTHROUGH */
	case VFIFO:
		break;

	default:
		error = EINVAL;
		goto out;
	}

	if (accmode & VWRITE && node->tn_flags & IMMUTABLE) {
		error = EPERM;
		goto out;
	}

	error = FUNC3(vp->v_type, node->tn_mode, node->tn_uid,
	    node->tn_gid, accmode, cred, NULL);

out:
	FUNC0(FUNC1(vp));

	return error;
}