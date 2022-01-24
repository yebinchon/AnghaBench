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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
typedef  int accmode_t ;

/* Variables and functions */
 int R_OK ; 
 int VEXEC ; 
 int FUNC0 (struct vnode*,int,struct ucred*,struct thread*) ; 
 int VREAD ; 
 int VWRITE ; 
 int W_OK ; 
 int X_OK ; 
 int FUNC1 (struct ucred*,struct vnode*,int) ; 
 int FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vnode *vp, int user_flags, struct ucred *cred,
     struct thread *td)
{
	accmode_t accmode;
	int error;

	/* Flags == 0 means only check for existence. */
	if (user_flags == 0)
		return (0);

	accmode = 0;
	if (user_flags & R_OK)
		accmode |= VREAD;
	if (user_flags & W_OK)
		accmode |= VWRITE;
	if (user_flags & X_OK)
		accmode |= VEXEC;
#ifdef MAC
	error = mac_vnode_check_access(cred, vp, accmode);
	if (error != 0)
		return (error);
#endif
	if ((accmode & VWRITE) == 0 || (error = FUNC2(vp)) == 0)
		error = FUNC0(vp, accmode, cred, td);
	return (error);
}