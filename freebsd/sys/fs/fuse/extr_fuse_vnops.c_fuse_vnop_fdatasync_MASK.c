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
struct vop_fdatasync_args {struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int MNT_WAIT ; 
 int FUNC0 (struct vnode*,struct thread*,int,int) ; 
 scalar_t__ FUNC1 (struct vnode*) ; 
 int FUNC2 (struct vop_fdatasync_args*) ; 

__attribute__((used)) static int
FUNC3(struct vop_fdatasync_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct thread *td = ap->a_td;
	int waitfor = MNT_WAIT;

	int err = 0;

	if (FUNC1(vp)) {
		return 0;
	}
	if ((err = FUNC2(ap)))
		return err;

	return FUNC0(vp, td, waitfor, true);
}