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
struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {struct mqfs_vdata* v_data; int /*<<< orphan*/  v_mount; } ;
struct mqfs_vdata {struct mqfs_node* mv_node; } ;
struct mqfs_node {int dummy; } ;
struct mqfs_info {int /*<<< orphan*/  mi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mqfs_vdata*,int /*<<< orphan*/ ) ; 
 struct mqfs_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mqfs_node*) ; 
 int /*<<< orphan*/  mv_link ; 
 int /*<<< orphan*/  mvdata_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mqfs_vdata*) ; 

__attribute__((used)) static int
FUNC6(struct vop_reclaim_args *ap)
{
	struct mqfs_info *mqfs = FUNC1(ap->a_vp->v_mount);
	struct vnode *vp = ap->a_vp;
	struct mqfs_node *pn;
	struct mqfs_vdata *vd;

	vd = vp->v_data;
	pn = vd->mv_node;
	FUNC3(&mqfs->mi_lock);
	vp->v_data = NULL;
	FUNC0(vd, mv_link);
	FUNC5(mvdata_zone, vd);
	FUNC2(pn);
	FUNC4(&mqfs->mi_lock);
	return (0);
}