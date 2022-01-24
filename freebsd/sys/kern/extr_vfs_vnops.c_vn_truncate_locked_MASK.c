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
struct vattr {int /*<<< orphan*/  va_vaflags; int /*<<< orphan*/  va_size; } ;
struct ucred {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vattr*) ; 
 int /*<<< orphan*/  VA_SYNC ; 
 int FUNC1 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int) ; 
 int FUNC3 (struct vnode*,struct vattr*,struct ucred*) ; 

int
FUNC4(struct vnode *vp, off_t length, bool sync,
    struct ucred *cred)
{
	struct vattr vattr;
	int error;

	error = FUNC1(vp, 1);
	if (error == 0) {
		FUNC0(&vattr);
		vattr.va_size = length;
		if (sync)
			vattr.va_vaflags |= VA_SYNC;
		error = FUNC3(vp, &vattr, cred);
		FUNC2(vp, -1);
	}
	return (error);
}