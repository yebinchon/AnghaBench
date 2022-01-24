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
struct vop_mknod_args {struct vattr* a_vap; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct vnode*,struct vnode**,struct componentname*,struct vattr*) ; 
 scalar_t__ FUNC1 (struct vnode*) ; 

__attribute__((used)) static int
FUNC2(struct vop_mknod_args *ap)
{

	struct vnode *dvp = ap->a_dvp;
	struct vnode **vpp = ap->a_vpp;
	struct componentname *cnp = ap->a_cnp;
	struct vattr *vap = ap->a_vap;

	if (FUNC1(dvp))
		return ENXIO;

	return FUNC0(dvp, vpp, cnp, vap);
}