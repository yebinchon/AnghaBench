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
struct vnode_au_info {int /*<<< orphan*/  vn_gen; int /*<<< orphan*/  vn_fileid; int /*<<< orphan*/  vn_fsid; int /*<<< orphan*/  vn_dev; int /*<<< orphan*/  vn_gid; int /*<<< orphan*/  vn_uid; int /*<<< orphan*/  vn_mode; } ;
struct vnode {int dummy; } ;
struct vattr {int /*<<< orphan*/  va_gen; int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_fsid; int /*<<< orphan*/  va_rdev; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int FUNC1 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 

__attribute__((used)) static int
FUNC2(struct vnode *vp, struct vnode_au_info *vnp)
{
	struct vattr vattr;
	int error;

	FUNC0(vp, "audit_arg_vnode");

	error = FUNC1(vp, &vattr, curthread->td_ucred);
	if (error) {
		/* XXX: How to handle this case? */
		return (error);
	}

	vnp->vn_mode = vattr.va_mode;
	vnp->vn_uid = vattr.va_uid;
	vnp->vn_gid = vattr.va_gid;
	vnp->vn_dev = vattr.va_rdev;
	vnp->vn_fsid = vattr.va_fsid;
	vnp->vn_fileid = vattr.va_fileid;
	vnp->vn_gen = vattr.va_gen;
	return (0);
}