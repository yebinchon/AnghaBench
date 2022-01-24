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
struct unionfs_mount {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (struct unionfs_mount*,struct vattr*,struct vattr*,struct thread*) ; 

int
FUNC2(struct unionfs_mount *ump,
			  struct vnode *lvp,
			  struct vattr *uva,
			  struct ucred *cred,
			  struct thread *td)
{
	int		error;
	struct vattr	lva;

	if ((error = FUNC0(lvp, &lva, cred)))
		return (error);

	FUNC1(ump, &lva, uva, td);

	return (error);
}