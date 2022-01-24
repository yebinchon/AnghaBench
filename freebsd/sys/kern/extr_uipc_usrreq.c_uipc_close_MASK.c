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
struct vnode {int dummy; } ;
struct unpcb {struct unpcb* unp_conn; struct vnode* unp_vnode; } ;
struct socket {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 struct mtx* FUNC6 (int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 struct unpcb* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct unpcb*,struct unpcb*) ; 
 int /*<<< orphan*/  FUNC10 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct unpcb*,struct unpcb*,int) ; 
 scalar_t__ FUNC12 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 

__attribute__((used)) static void
FUNC14(struct socket *so)
{
	struct unpcb *unp, *unp2;
	struct vnode *vp = NULL;
	struct mtx *vplock;
	int freed;
	unp = FUNC8(so);
	FUNC0(unp != NULL, ("uipc_close: unp == NULL"));


	vplock = NULL;
	if ((vp = unp->unp_vnode) != NULL) {
		vplock = FUNC6(mtxpool_sleep, vp);
		FUNC5(vplock);
	}
	FUNC1(unp);
	if (vp && unp->unp_vnode == NULL) {
		FUNC7(vplock);
		vp = NULL;
	}
	if (vp != NULL) {
		FUNC3(vp);
		unp->unp_vnode = NULL;
	}
	unp2 = unp->unp_conn;
	FUNC10(unp);
	if (FUNC4(unp == unp2)) {
		FUNC9(unp, unp2);
	} else if (unp2 != NULL) {
		FUNC10(unp2);
		FUNC11(unp, unp2, freed);
		FUNC9(unp, unp2);
		if (FUNC12(unp2) == 0)
			FUNC2(unp2);
	}
	if (FUNC12(unp) == 0)
		FUNC2(unp);
	if (vp) {
		FUNC7(vplock);
		FUNC13(vp);
	}
}