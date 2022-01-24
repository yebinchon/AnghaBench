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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct vnode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  vnode_check_mmap_downgrade ; 

void
FUNC2(struct ucred *cred, struct vnode *vp,
    int *prot)
{
	int result = *prot;

	FUNC0(vp, "mac_vnode_check_mmap_downgrade");

	FUNC1(vnode_check_mmap_downgrade, cred, vp, vp->v_label,
	    &result);

	*prot = result;
}