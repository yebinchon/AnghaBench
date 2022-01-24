#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_getattr_args {struct ucred* a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {int /*<<< orphan*/  va_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {int dataflags; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int FSESS_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct vattr*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct vattr*,struct ucred*,struct thread*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 

__attribute__((used)) static int
FUNC7(struct vop_getattr_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vattr *vap = ap->a_vap;
	struct ucred *cred = ap->a_cred;
	struct thread *td = curthread;

	int err = 0;
	int dataflags;

	dataflags = FUNC2(FUNC5(vp))->dataflags;

	/* Note that we are not bailing out on a dead file system just yet. */

	if (!(dataflags & FSESS_INITED)) {
		if (!FUNC4(vp)) {
			FUNC1(FUNC2(FUNC5(vp)));
			err = ENOTCONN;
			return err;
		} else {
			goto fake;
		}
	}
	err = FUNC3(vp, vap, cred, td);
	if (err == ENOTCONN && FUNC4(vp)) {
		/* see comment in fuse_vfsop_statfs() */
		goto fake;
	} else {
		return err;
	}

fake:
	FUNC0(vap, sizeof(*vap));
	vap->va_type = FUNC6(vp);

	return 0;
}