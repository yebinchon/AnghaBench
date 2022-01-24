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
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 struct vattr* FUNC0 (struct vnode*) ; 
 int FUNC1 (struct vnode*,struct vattr*,struct ucred*,struct thread*) ; 

int
FUNC2(struct vnode *vp, struct vattr *vap, struct ucred *cred,
	struct thread *td)
{
	struct vattr *attrs;

	if ((attrs = FUNC0(vp)) != NULL) {
		*vap = *attrs;	/* struct copy */
		return 0;
	}

	return FUNC1(vp, vap, cred, td);
}