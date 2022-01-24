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
struct componentname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct vnode*,int /*<<< orphan*/ ,struct componentname*) ; 
 int /*<<< orphan*/  vnode_check_lookup ; 

int
FUNC3(struct ucred *cred, struct vnode *dvp,
    struct componentname *cnp)
{
	int error;

	FUNC0(dvp, "mac_vnode_check_lookup");

	FUNC2(vnode_check_lookup, cred, dvp, dvp->v_label, cnp);
	FUNC1(vnode_check_lookup, error, cred, dvp, cnp);

	return (error);
}