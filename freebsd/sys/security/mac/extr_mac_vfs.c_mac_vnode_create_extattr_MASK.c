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
struct vnode {int /*<<< orphan*/  v_label; } ;
struct ucred {int dummy; } ;
struct mount {int /*<<< orphan*/  mnt_label; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct mount*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,struct componentname*) ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC2 (struct vnode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int ea_warn_once ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  vnode_create_extattr ; 

int
FUNC5(struct ucred *cred, struct mount *mp,
    struct vnode *dvp, struct vnode *vp, struct componentname *cnp)
{
	int error;

	FUNC0(dvp, "mac_vnode_create_extattr");
	FUNC0(vp, "mac_vnode_create_extattr");

	error = FUNC3(vp, cred, curthread);
	if (error == EOPNOTSUPP) {
		if (ea_warn_once == 0) {
			FUNC4("Warning: transactions not supported "
			    "in EA write.\n");
			ea_warn_once = 1;
		}
	} else if (error)
		return (error);

	FUNC1(vnode_create_extattr, cred, mp, mp->mnt_label, dvp,
	    dvp->v_label, vp, vp->v_label, cnp);

	if (error) {
		FUNC2(vp, 0, NOCRED, curthread);
		return (error);
	}

	error = FUNC2(vp, 1, NOCRED, curthread);
	if (error == EOPNOTSUPP)
		error = 0;

	return (error);
}