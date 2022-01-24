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
struct label {int dummy; } ;
struct image_params {int /*<<< orphan*/  execlabel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct ucred*,struct vnode*,int /*<<< orphan*/ ,struct label*,struct image_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_execve_transition ; 

void
FUNC2(struct ucred *old, struct ucred *new,
    struct vnode *vp, struct label *interpvplabel, struct image_params *imgp)
{

	FUNC0(vp, "mac_vnode_execve_transition");

	FUNC1(vnode_execve_transition, old, new, vp,
	    vp->v_label, interpvplabel, imgp, imgp->execlabel);
}