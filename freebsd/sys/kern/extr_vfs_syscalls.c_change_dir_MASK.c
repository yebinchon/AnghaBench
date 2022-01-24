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
struct vnode {scalar_t__ v_type; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int ENOTDIR ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  VEXEC ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vnode*) ; 

int
FUNC3(struct vnode *vp, struct thread *td)
{
#ifdef MAC
	int error;
#endif

	FUNC0(vp, "change_dir(): vp not locked");
	if (vp->v_type != VDIR)
		return (ENOTDIR);
#ifdef MAC
	error = mac_vnode_check_chdir(td->td_ucred, vp);
	if (error != 0)
		return (error);
#endif
	return (FUNC1(vp, VEXEC, td->td_ucred, td));
}