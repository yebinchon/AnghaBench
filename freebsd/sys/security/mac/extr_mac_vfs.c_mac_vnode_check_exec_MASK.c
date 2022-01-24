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
struct image_params {int /*<<< orphan*/  execlabel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct vnode*,struct image_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct vnode*,int /*<<< orphan*/ ,struct image_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_check_exec ; 

int
FUNC3(struct ucred *cred, struct vnode *vp,
    struct image_params *imgp)
{
	int error;

	FUNC0(vp, "mac_vnode_check_exec");

	FUNC2(vnode_check_exec, cred, vp, vp->v_label, imgp,
	    imgp->execlabel);
	FUNC1(vnode_check_exec, error, cred, vp, imgp);

	return (error);
}