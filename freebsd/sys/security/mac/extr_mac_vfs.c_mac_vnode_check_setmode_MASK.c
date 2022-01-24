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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_check_setmode ; 

int
FUNC3(struct ucred *cred, struct vnode *vp, mode_t mode)
{
	int error;

	FUNC0(vp, "mac_vnode_check_setmode");

	FUNC2(vnode_check_setmode, cred, vp, vp->v_label, mode);
	FUNC1(vnode_check_setmode, error, cred, vp, mode);

	return (error);
}