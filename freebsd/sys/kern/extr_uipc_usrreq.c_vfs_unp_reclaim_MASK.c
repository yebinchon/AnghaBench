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
struct vnode {scalar_t__ v_type; } ;
struct unpcb {struct vnode* unp_vnode; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct unpcb**) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 scalar_t__ VSOCK ; 
 int /*<<< orphan*/  FUNC6 (struct mtx*) ; 
 struct mtx* FUNC7 (int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 

void
FUNC10(struct vnode *vp)
{
	struct unpcb *unp;
	int active;
	struct mtx *vplock;

	FUNC0(vp, "vfs_unp_reclaim");
	FUNC1(vp->v_type == VSOCK,
	    ("vfs_unp_reclaim: vp->v_type != VSOCK"));

	active = 0;
	vplock = FUNC7(mtxpool_sleep, vp);
	FUNC6(vplock);
	FUNC4(vp, &unp);
	if (unp == NULL)
		goto done;
	FUNC2(unp);
	if (unp->unp_vnode == vp) {
		FUNC5(vp);
		unp->unp_vnode = NULL;
		active = 1;
	}
	FUNC3(unp);
 done:
	FUNC8(vplock);
	if (active)
		FUNC9(vp);
}