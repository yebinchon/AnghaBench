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
struct ntb_transport_ctx {scalar_t__ qp_bitmap; int mw_count; struct ntb_transport_child* mw_vec; struct ntb_transport_child* qp_vec; int /*<<< orphan*/  link_watchdog; int /*<<< orphan*/  link_work; int /*<<< orphan*/  link_cleanup; struct ntb_transport_child* child; } ;
struct ntb_transport_child {int /*<<< orphan*/  dev; struct ntb_transport_child* next; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NTB_T ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ntb_transport_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ntb_transport_child*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ntb_transport_ctx*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ntb_transport_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct ntb_transport_ctx *nt = FUNC3(dev);
	struct ntb_transport_child **cpp = &nt->child;
	struct ntb_transport_child *nc;
	int error = 0, i;

	while ((nc = *cpp) != NULL) {
		*cpp = (*cpp)->next;
		error = FUNC2(dev, nc->dev);
		if (error)
			break;
		FUNC4(nc, M_DEVBUF);
	}
	FUNC0(nt->qp_bitmap == 0,
	    ("Some queues not freed on detach (%jx)", nt->qp_bitmap));

	FUNC8(nt);
	FUNC9(taskqueue_swi, &nt->link_cleanup);
	FUNC1(&nt->link_work);
	FUNC1(&nt->link_watchdog);

	FUNC7(dev);
	FUNC5(dev);

	for (i = 0; i < nt->mw_count; i++)
		FUNC6(nt, i);

	FUNC4(nt->qp_vec, M_NTB_T);
	FUNC4(nt->mw_vec, M_NTB_T);
	return (0);
}