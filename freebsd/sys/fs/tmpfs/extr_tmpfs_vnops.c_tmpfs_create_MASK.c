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
struct vop_create_args {struct vattr* a_vap; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_type; } ;
struct componentname {int cn_flags; } ;

/* Variables and functions */
 int MAKEENTRY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VREG ; 
 scalar_t__ VSOCK ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,struct vnode*,struct componentname*) ; 
 int FUNC2 (struct vnode*,struct vnode**,struct vattr*,struct componentname*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 

__attribute__((used)) static int
FUNC4(struct vop_create_args *v)
{
	struct vnode *dvp = v->a_dvp;
	struct vnode **vpp = v->a_vpp;
	struct componentname *cnp = v->a_cnp;
	struct vattr *vap = v->a_vap;
	int error;

	FUNC0(vap->va_type == VREG || vap->va_type == VSOCK);

	error = FUNC2(dvp, vpp, vap, cnp, NULL);
	if (error == 0 && (cnp->cn_flags & MAKEENTRY) != 0 && FUNC3(dvp))
		FUNC1(dvp, *vpp, cnp);
	return (error);
}