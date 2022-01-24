#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vop_setlabel_args {int /*<<< orphan*/  a_cred; struct label* a_label; struct vnode* a_vp; } ;
struct vnode {TYPE_1__* v_mount; } ;
struct label {int dummy; } ;
struct TYPE_2__ {int mnt_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EOPNOTSUPP ; 
 int MNT_MULTILABEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vnode*,struct label*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vnode*,struct label*) ; 

int
FUNC3(struct vop_setlabel_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct label *intlabel = ap->a_label;
	int error;

	FUNC0(vp, "vop_stdsetlabel_ea");

	if ((vp->v_mount->mnt_flag & MNT_MULTILABEL) == 0)
		return (EOPNOTSUPP);

	error = FUNC2(ap->a_cred, vp, intlabel);
	if (error)
		return (error);

	FUNC1(ap->a_cred, vp, intlabel);

	return (0);
}