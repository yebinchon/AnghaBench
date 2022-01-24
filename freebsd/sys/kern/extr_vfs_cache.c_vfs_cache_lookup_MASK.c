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
struct vop_lookup_args {struct vnode* a_dvp; struct componentname* a_cnp; struct vnode** a_vpp; } ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct componentname {int cn_flags; scalar_t__ cn_nameiop; struct thread* cn_thread; struct ucred* cn_cred; } ;
struct TYPE_2__ {int mnt_flag; } ;

/* Variables and functions */
 scalar_t__ DELETE ; 
 int ENOTDIR ; 
 int EROFS ; 
 int ISLASTCN ; 
 int MNT_RDONLY ; 
 scalar_t__ RENAME ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  VEXEC ; 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 int FUNC1 (struct vnode*,struct vnode**,struct componentname*) ; 
 int FUNC2 (struct vnode*,struct vnode**,struct componentname*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct vop_lookup_args *ap)
{
	struct vnode *dvp;
	int error;
	struct vnode **vpp = ap->a_vpp;
	struct componentname *cnp = ap->a_cnp;
	struct ucred *cred = cnp->cn_cred;
	int flags = cnp->cn_flags;
	struct thread *td = cnp->cn_thread;

	*vpp = NULL;
	dvp = ap->a_dvp;

	if (dvp->v_type != VDIR)
		return (ENOTDIR);

	if ((flags & ISLASTCN) && (dvp->v_mount->mnt_flag & MNT_RDONLY) &&
	    (cnp->cn_nameiop == DELETE || cnp->cn_nameiop == RENAME))
		return (EROFS);

	error = FUNC0(dvp, VEXEC, cred, td);
	if (error)
		return (error);

	error = FUNC2(dvp, vpp, cnp, NULL, NULL);
	if (error == 0)
		return (FUNC1(dvp, vpp, cnp));
	if (error == -1)
		return (0);
	return (error);
}