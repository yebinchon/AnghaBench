#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vop_remove_args {TYPE_2__* a_cnp; TYPE_3__* a_vp; TYPE_1__* a_dvp; } ;
struct mqfs_node {int dummy; } ;
struct mqfs_info {int /*<<< orphan*/  mi_lock; } ;
struct TYPE_6__ {scalar_t__ v_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  cn_cred; } ;
struct TYPE_4__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ VDIR ; 
 struct mqfs_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mqfs_node* FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct mqfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct vop_remove_args *ap)
{
	struct mqfs_info *mqfs = FUNC0(ap->a_dvp->v_mount);
	struct mqfs_node *pn;
	int error;

	if (ap->a_vp->v_type == VDIR)
                return (EPERM);
	pn = FUNC1(ap->a_vp);
	FUNC3(&mqfs->mi_lock);
	error = FUNC2(pn, ap->a_cnp->cn_cred);
	FUNC4(&mqfs->mi_lock);
	return (error);
}