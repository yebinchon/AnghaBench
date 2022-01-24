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
struct vnode {struct pfs_vdata* v_data; } ;
struct pfs_vdata {struct pfs_node* pvd_pn; } ;
struct pfs_node {int /*<<< orphan*/  pn_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfs_node*) ; 
 int FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vop_reclaim_args *va)
{
	struct vnode *vn = va->a_vp;
	struct pfs_vdata *pvd = vn->v_data;
	struct pfs_node *pn = pvd->pvd_pn;

	FUNC0(("%s", pn->pn_name));
	FUNC1(pn);

	return (FUNC2(va->a_vp));
}