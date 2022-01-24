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
struct vnode {struct label* v_label; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct vnode*,struct label*) ; 
 int /*<<< orphan*/  system_check_auditctl ; 

int
FUNC3(struct ucred *cred, struct vnode *vp)
{
	int error;
	struct label *vl;

	FUNC0(vp, "mac_system_check_auditctl");

	vl = (vp != NULL) ? vp->v_label : NULL;
	FUNC2(system_check_auditctl, cred, vp, vl);
	FUNC1(system_check_auditctl, error, cred, vp);

	return (error);
}