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
struct vattr {scalar_t__ va_uid; int /*<<< orphan*/  va_gid; } ;
struct ucred {scalar_t__ cr_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_VFS_LINK ; 
 int FUNC0 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*) ; 
 scalar_t__ hardlink_check_gid ; 
 scalar_t__ hardlink_check_uid ; 
 int FUNC2 (struct ucred*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vnode *vp, struct ucred *cred)
{
	struct vattr va;
	int error;

	if (!hardlink_check_uid && !hardlink_check_gid)
		return (0);

	error = FUNC0(vp, &va, cred);
	if (error != 0)
		return (error);

	if (hardlink_check_uid && cred->cr_uid != va.va_uid) {
		error = FUNC2(cred, PRIV_VFS_LINK);
		if (error != 0)
			return (error);
	}

	if (hardlink_check_gid && !FUNC1(va.va_gid, cred)) {
		error = FUNC2(cred, PRIV_VFS_LINK);
		if (error != 0)
			return (error);
	}

	return (0);
}