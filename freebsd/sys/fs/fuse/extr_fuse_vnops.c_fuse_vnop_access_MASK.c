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
struct vop_access_args {int a_accmode; struct ucred* a_cred; int /*<<< orphan*/  a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct fuse_data {int dataflags; int /*<<< orphan*/  daemoncred; } ;

/* Variables and functions */
 int EBADF ; 
 int ENXIO ; 
 int FSESS_INITED ; 
 int /*<<< orphan*/  PRIV_VFS_ADMIN ; 
 struct fuse_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vnode*,int,int /*<<< orphan*/ ,struct ucred*) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct ucred*) ; 
 scalar_t__ FUNC4 (struct ucred*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vnode*) ; 
 scalar_t__ FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

__attribute__((used)) static int
FUNC8(struct vop_access_args *ap)
{
	struct vnode *vp = ap->a_vp;
	int accmode = ap->a_accmode;
	struct ucred *cred = ap->a_cred;

	struct fuse_data *data = FUNC0(FUNC7(vp));

	int err;

	if (FUNC2(vp)) {
		if (FUNC6(vp)) {
			return 0;
		}
		return ENXIO;
	}
	if (!(data->dataflags & FSESS_INITED)) {
		if (FUNC6(vp)) {
			if (FUNC4(cred, PRIV_VFS_ADMIN) ||
			    (FUNC3(data->daemoncred, cred) == 0)) {
				return 0;
			}
		}
		return EBADF;
	}
	if (FUNC5(vp)) {
		return 0;
	}

	err = FUNC1(vp, accmode, ap->a_td, ap->a_cred);
	return err;
}