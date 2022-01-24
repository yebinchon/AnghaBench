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
struct vop_open_args {int a_mode; struct ucred* a_cred; struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct fuse_vnode_data {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int FEXEC ; 
 int FREAD ; 
 int FWRITE ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 scalar_t__ VFIFO ; 
 struct fuse_vnode_data* FUNC0 (struct vnode*) ; 
 int FUNC1 (struct vnode*,int,int /*<<< orphan*/ *,struct thread*,struct ucred*) ; 
 scalar_t__ FUNC2 (struct vnode*,int,struct ucred*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC5(struct vop_open_args *ap)
{
	struct vnode *vp = ap->a_vp;
	int a_mode = ap->a_mode;
	struct thread *td = ap->a_td;
	struct ucred *cred = ap->a_cred;
	pid_t pid = td->td_proc->p_pid;
	struct fuse_vnode_data *fvdat;

	if (FUNC3(vp))
		return ENXIO;
	if (vp->v_type == VCHR || vp->v_type == VBLK || vp->v_type == VFIFO)
		return (EOPNOTSUPP);
	if ((a_mode & (FREAD | FWRITE | FEXEC)) == 0)
		return EINVAL;

	fvdat = FUNC0(vp);

	if (FUNC2(vp, a_mode, cred, pid)) {
		FUNC4(vp, 0, td);
		return 0;
	}

	return FUNC1(vp, a_mode, NULL, td, cred);
}