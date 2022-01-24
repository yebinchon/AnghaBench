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
struct vop_advlock_args {TYPE_1__* a_fl; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_lockf; } ;
struct vattr {scalar_t__ va_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_3__ {scalar_t__ l_whence; } ;

/* Variables and functions */
 int LK_RETRY ; 
 int LK_SHARED ; 
 scalar_t__ SEEK_END ; 
 int FUNC0 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_2__* curthread ; 
 int FUNC2 (struct vop_advlock_args*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int) ; 

int
FUNC4(struct vop_advlock_args *ap)
{
	struct vnode *vp;
	struct vattr vattr;
	int error;

	vp = ap->a_vp;
	if (ap->a_fl->l_whence == SEEK_END) {
		/*
		 * The NFSv4 server must avoid doing a vn_lock() here, since it
		 * can deadlock the nfsd threads, due to a LOR.  Fortunately
		 * the NFSv4 server always uses SEEK_SET and this code is
		 * only required for the SEEK_END case.
		 */
		FUNC3(vp, LK_SHARED | LK_RETRY);
		error = FUNC0(vp, &vattr, curthread->td_ucred);
		FUNC1(vp, 0);
		if (error)
			return (error);
	} else
		vattr.va_size = 0;

	return (FUNC2(ap, &(vp->v_lockf), vattr.va_size));
}