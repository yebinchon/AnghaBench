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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct ucred*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct ucred*,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_check_stat ; 

int
FUNC3(struct ucred *active_cred, struct ucred *file_cred,
    struct vnode *vp)
{
	int error;

	FUNC0(vp, "mac_vnode_check_stat");

	FUNC2(vnode_check_stat, active_cred, file_cred, vp,
	    vp->v_label);
	FUNC1(vnode_check_stat, error, active_cred, file_cred,
	    vp);

	return (error);
}