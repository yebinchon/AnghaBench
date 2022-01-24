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
struct vattr {int va_vaflags; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int VA_UTIMES_NULL ; 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  VWRITE ; 
 int /*<<< orphan*/  VWRITE_ATTRIBUTES ; 

int
FUNC2(struct vnode *vp, struct vattr *vap, struct ucred *cred,
    struct thread *td)
{
	int error;

	/*
	 * Grant permission if the caller is the owner of the file, or
	 * the super-user, or has ACL_WRITE_ATTRIBUTES permission on
	 * on the file.  If the time pointer is null, then write
	 * permission on the file is also sufficient.
	 *
	 * From NFSv4.1, draft 21, 6.2.1.3.1, Discussion of Mask Attributes:
	 * A user having ACL_WRITE_DATA or ACL_WRITE_ATTRIBUTES
	 * will be allowed to set the times [..] to the current
	 * server time.
	 */
	error = FUNC1(vp, VWRITE_ATTRIBUTES, cred, td);
	if (error != 0 && (vap->va_vaflags & VA_UTIMES_NULL) != 0)
		error = FUNC0(vp, VWRITE, cred, td);
	return (error);
}