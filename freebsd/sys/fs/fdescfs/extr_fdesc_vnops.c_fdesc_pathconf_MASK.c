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
struct vop_pathconf_args {int a_name; int* a_retval; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd_fd; int /*<<< orphan*/  fd_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  Froot ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct vnode*) ; 
#define  _PC_LINK_MAX 129 
#define  _PC_NAME_MAX 128 
 int /*<<< orphan*/  curthread ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int) ; 
 int FUNC4 (struct vop_pathconf_args*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 

__attribute__((used)) static int
FUNC7(struct vop_pathconf_args *ap)
{
	struct vnode *vp = ap->a_vp;
	int error;

	switch (ap->a_name) {
	case _PC_NAME_MAX:
		*ap->a_retval = NAME_MAX;
		return (0);
	case _PC_LINK_MAX:
		if (FUNC1(vp)->fd_type == Froot)
			*ap->a_retval = 2;
		else
			*ap->a_retval = 1;
		return (0);
	default:
		if (FUNC1(vp)->fd_type == Froot)
			return (FUNC4(ap));
		FUNC5(vp);
		FUNC0(vp, 0);
		error = FUNC2(curthread, FUNC1(vp)->fd_fd,
		    ap->a_name, ap->a_retval);
		FUNC3(vp, LK_SHARED | LK_RETRY);
		FUNC6(vp);
		return (error);
	}
}