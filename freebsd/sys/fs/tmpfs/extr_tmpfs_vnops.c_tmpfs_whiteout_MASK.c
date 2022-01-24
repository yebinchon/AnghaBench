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
struct vop_whiteout_args {int a_flags; struct componentname* a_cnp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct tmpfs_dirent {int /*<<< orphan*/ * td_node; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
#define  CREATE 130 
#define  DELETE 129 
 int EEXIST ; 
#define  LOOKUP 128 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct tmpfs_dirent* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct componentname*) ; 
 int FUNC3 (struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct componentname*) ; 

__attribute__((used)) static int
FUNC5(struct vop_whiteout_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct componentname *cnp = ap->a_cnp;
	struct tmpfs_dirent *de;

	switch (ap->a_flags) {
	case LOOKUP:
		return (0);
	case CREATE:
		de = FUNC2(FUNC0(dvp), NULL, cnp);
		if (de != NULL)
			return (de->td_node == NULL ? 0 : EEXIST);
		return (FUNC3(dvp, cnp));
	case DELETE:
		FUNC4(dvp, cnp);
		return (0);
	default:
		FUNC1("tmpfs_whiteout: unknown op");
	}
}