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
struct vop_whiteout_args {int a_flags; struct componentname* a_cnp; int /*<<< orphan*/  a_dvp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_uppervp; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
#define  CREATE 130 
#define  DELETE 129 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LOOKUP 128 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vnode*,struct componentname*,int) ; 
 struct unionfs_node* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vop_whiteout_args *ap)
{
	struct unionfs_node *dunp;
	struct componentname *cnp;
	struct vnode   *udvp;
	int		error;

	FUNC1("unionfs_whiteout: enter\n");

	FUNC0(ap->a_dvp);

	dunp = FUNC3(ap->a_dvp);
	cnp = ap->a_cnp;
	udvp = dunp->un_uppervp;
	error = EOPNOTSUPP;

	if (udvp != NULLVP) {
		switch (ap->a_flags) {
		case CREATE:
		case DELETE:
		case LOOKUP:
			error = FUNC2(udvp, cnp, ap->a_flags);
			break;
		default:
			error = EINVAL;
			break;
		}
	}

	FUNC1("unionfs_whiteout: leave (%d)\n", error);

	return (error);
}