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
struct unpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_CACHE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  maxsockets ; 
 int /*<<< orphan*/  maxsockets_change ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/ * FUNC9 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  unp_defer_task ; 
 int /*<<< orphan*/  unp_defers ; 
 int /*<<< orphan*/  unp_dhead ; 
 int /*<<< orphan*/  unp_gc ; 
 int /*<<< orphan*/  unp_gc_task ; 
 int /*<<< orphan*/  unp_process_defers ; 
 int /*<<< orphan*/  unp_shead ; 
 int /*<<< orphan*/  unp_sphead ; 
 int /*<<< orphan*/ * unp_zone ; 
 int /*<<< orphan*/  unp_zone_change ; 

__attribute__((used)) static void
FUNC12(void)
{

#ifdef VIMAGE
	if (!IS_DEFAULT_VNET(curvnet))
		return;
#endif
	unp_zone = FUNC9("unpcb", sizeof(struct unpcb), NULL, NULL,
	    NULL, NULL, UMA_ALIGN_CACHE, 0);
	if (unp_zone == NULL)
		FUNC8("unp_init");
	FUNC10(unp_zone, maxsockets);
	FUNC11(unp_zone, "kern.ipc.maxsockets limit reached");
	FUNC0(maxsockets_change, unp_zone_change,
	    NULL, EVENTHANDLER_PRI_ANY);
	FUNC2(&unp_dhead);
	FUNC2(&unp_shead);
	FUNC2(&unp_sphead);
	FUNC3(&unp_defers);
	FUNC5(taskqueue_thread, &unp_gc_task, 0, unp_gc, NULL);
	FUNC4(&unp_defer_task, 0, unp_process_defers, NULL);
	FUNC7();
	FUNC6();
}