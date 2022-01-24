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
struct vnode {int v_type; } ;
struct vattr {int va_size; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct fiobmap2_arg {int /*<<< orphan*/  runb; int /*<<< orphan*/  runp; int /*<<< orphan*/  bn; } ;
struct file {int f_offset; int /*<<< orphan*/  f_flag; int /*<<< orphan*/  f_cred; struct vnode* f_vnode; } ;

/* Variables and functions */
 int ENOTTY ; 
#define  FIOASYNC 134 
#define  FIOBMAP2 133 
#define  FIONBIO 132 
#define  FIONREAD 131 
 int LK_RETRY ; 
 int LK_SHARED ; 
#define  VCHR 130 
#define  VDIR 129 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct vnode*,struct vattr*,struct ucred*) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
#define  VREG 128 
 int FUNC4 (struct ucred*,int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC6(struct file *fp, u_long com, void *data, struct ucred *active_cred,
    struct thread *td)
{
	struct vattr vattr;
	struct vnode *vp;
	struct fiobmap2_arg *bmarg;
	int error;

	vp = fp->f_vnode;
	switch (vp->v_type) {
	case VDIR:
	case VREG:
		switch (com) {
		case FIONREAD:
			FUNC5(vp, LK_SHARED | LK_RETRY);
			error = FUNC1(vp, &vattr, active_cred);
			FUNC3(vp, 0);
			if (error == 0)
				*(int *)data = vattr.va_size - fp->f_offset;
			return (error);
		case FIOBMAP2:
			bmarg = (struct fiobmap2_arg *)data;
			FUNC5(vp, LK_SHARED | LK_RETRY);
#ifdef MAC
			error = mac_vnode_check_read(active_cred, fp->f_cred,
			    vp);
			if (error == 0)
#endif
				error = FUNC0(vp, bmarg->bn, NULL,
				    &bmarg->bn, &bmarg->runp, &bmarg->runb);
			FUNC3(vp, 0);
			return (error);
		case FIONBIO:
		case FIOASYNC:
			return (0);
		default:
			return (FUNC2(vp, com, data, fp->f_flag,
			    active_cred, td));
		}
		break;
	case VCHR:
		return (FUNC2(vp, com, data, fp->f_flag,
		    active_cred, td));
	default:
		return (ENOTTY);
	}
}