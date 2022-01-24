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
struct vnode {int dummy; } ;
struct unpcb {int unp_flags; TYPE_1__* unp_socket; struct sockaddr_un* unp_addr; int /*<<< orphan*/  unp_refs; struct unpcb* unp_conn; struct vnode* unp_vnode; scalar_t__ unp_gencnt; } ;
struct socket {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * so_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct unpcb* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int UNP_NASCENT ; 
 int /*<<< orphan*/  FUNC7 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr_un*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mtx*) ; 
 struct mtx* FUNC16 (int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC17 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 struct unpcb* FUNC18 (struct socket*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  unp_count ; 
 int /*<<< orphan*/  FUNC20 (struct unpcb*,struct unpcb*) ; 
 int /*<<< orphan*/  FUNC21 (struct unpcb*) ; 
 int /*<<< orphan*/  unp_gc_task ; 
 scalar_t__ unp_gencnt ; 
 int /*<<< orphan*/  unp_link ; 
 int /*<<< orphan*/  FUNC22 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC23 (struct unpcb*,struct unpcb*,int) ; 
 scalar_t__ FUNC24 (struct unpcb*) ; 
 int unp_rights ; 
 int /*<<< orphan*/  FUNC25 (struct vnode*) ; 

__attribute__((used)) static void
FUNC26(struct socket *so)
{
	struct unpcb *unp, *unp2;
	struct mtx *vplock;
	struct sockaddr_un *saved_unp_addr;
	struct vnode *vp;
	int freeunp, local_unp_rights;

	unp = FUNC18(so);
	FUNC0(unp != NULL, ("uipc_detach: unp == NULL"));

	vp = NULL;
	vplock = NULL;
	local_unp_rights = 0;

	FUNC5();
	FUNC3(unp, unp_link);
	unp->unp_gencnt = ++unp_gencnt;
	--unp_count;
	FUNC6();

	FUNC9(unp);
 restart:
	if ((vp = unp->unp_vnode) != NULL) {
		vplock = FUNC16(mtxpool_sleep, vp);
		FUNC15(vplock);
	}
	FUNC7(unp);
	if (unp->unp_vnode != vp &&
		unp->unp_vnode != NULL) {
		if (vplock)
			FUNC17(vplock);
		FUNC8(unp);
		goto restart;
	}
	if ((unp->unp_flags & UNP_NASCENT) != 0) {
		goto teardown;
	}
	if ((vp = unp->unp_vnode) != NULL) {
		FUNC12(vp);
		unp->unp_vnode = NULL;
	}
	if (FUNC13(unp == unp->unp_conn)) {
		FUNC20(unp, unp);
		unp2 = NULL;
		goto connect_self;
	}
	if ((unp2 = unp->unp_conn) != NULL) {
		FUNC23(unp, unp2, freeunp);
		if (freeunp)
			unp2 = NULL;
	}
	FUNC22(unp);
	if (unp2 != NULL) {
		FUNC22(unp2);
		FUNC20(unp, unp2);
		if (FUNC24(unp2) == 0)
			FUNC8(unp2);
	}
 connect_self:
	FUNC8(unp);
	FUNC10();
	while (!FUNC1(&unp->unp_refs)) {
		struct unpcb *ref = FUNC2(&unp->unp_refs);

		FUNC22(ref);
		FUNC11();

		FUNC4(ref != unp);
		FUNC9(ref);
		FUNC21(ref);
		FUNC10();
	}

	FUNC11();
	FUNC7(unp);
	freeunp = FUNC24(unp);
	FUNC4(freeunp == 0);
	local_unp_rights = unp_rights;
teardown:
	unp->unp_socket->so_pcb = NULL;
	saved_unp_addr = unp->unp_addr;
	unp->unp_addr = NULL;
	unp->unp_socket = NULL;
	freeunp = FUNC24(unp);
	if (saved_unp_addr != NULL)
		FUNC14(saved_unp_addr, M_SONAME);
	if (!freeunp)
		FUNC8(unp);
	if (vp) {
		FUNC17(vplock);
		FUNC25(vp);
	}
	if (local_unp_rights)
		FUNC19(taskqueue_thread, &unp_gc_task, -1);
}