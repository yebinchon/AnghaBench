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
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct vnode*,struct componentname*,struct vattr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct vnode*,int /*<<< orphan*/ ,struct componentname*,struct vattr*) ; 
 int /*<<< orphan*/  vnode_check_create ; 

int
FUNC3(struct ucred *cred, struct vnode *dvp,
    struct componentname *cnp, struct vattr *vap)
{
	int error;

	FUNC0(dvp, "mac_vnode_check_create");

	FUNC2(vnode_check_create, cred, dvp, dvp->v_label, cnp,
	    vap);
	FUNC1(vnode_check_create, error, cred, dvp, cnp, vap);

	return (error);
}