#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vop_readlink_args {struct ucred* a_cred; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int dummy; } ;
struct ucred {int dummy; } ;
struct fuse_dispatcher {char* answ; int /*<<< orphan*/  iosize; } ;
struct TYPE_7__ {int dataflags; } ;
struct TYPE_5__ {char* f_mntonname; } ;
struct TYPE_6__ {TYPE_1__ mnt_stat; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int FSESS_PUSH_SYMLINKS_IN ; 
 int /*<<< orphan*/  FUSE_READLINK ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,struct ucred*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,struct uio*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 TYPE_2__* FUNC8 (struct vnode*) ; 

__attribute__((used)) static int
FUNC9(struct vop_readlink_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct uio *uio = ap->a_uio;
	struct ucred *cred = ap->a_cred;

	struct fuse_dispatcher fdi;
	int err;

	if (FUNC4(vp)) {
		return ENXIO;
	}
	if (!FUNC7(vp)) {
		return EINVAL;
	}
	FUNC1(&fdi, 0);
	err = FUNC2(&fdi, FUSE_READLINK, vp, curthread, cred);
	if (err) {
		goto out;
	}
	if (((char *)fdi.answ)[0] == '/' &&
	    FUNC3(FUNC8(vp))->dataflags & FSESS_PUSH_SYMLINKS_IN) {
		char *mpth = FUNC8(vp)->mnt_stat.f_mntonname;

		err = FUNC6(mpth, FUNC5(mpth), uio);
	}
	if (!err) {
		err = FUNC6(fdi.answ, fdi.iosize, uio);
	}
out:
	FUNC0(&fdi);
	return err;
}