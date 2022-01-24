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
struct vnode {int dummy; } ;
struct vattr {int va_mode; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int ALLPERMS ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC0 (struct vattr*) ; 
 int FUNC1 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int FUNC3 (struct ucred*,struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int) ; 
 int FUNC6 (struct vnode*,struct mount**,int) ; 

int
FUNC7(struct thread *td, struct ucred *cred, struct vnode *vp, int mode)
{
	struct mount *mp;
	struct vattr vattr;
	int error;

	if ((error = FUNC6(vp, &mp, V_WAIT | PCATCH)) != 0)
		return (error);
	FUNC5(vp, LK_EXCLUSIVE | LK_RETRY);
	FUNC0(&vattr);
	vattr.va_mode = mode & ALLPERMS;
#ifdef MAC
	error = mac_vnode_check_setmode(cred, vp, vattr.va_mode);
	if (error == 0)
#endif
		error = FUNC1(vp, &vattr, cred);
	FUNC2(vp, 0);
	FUNC4(mp);
	return (error);
}