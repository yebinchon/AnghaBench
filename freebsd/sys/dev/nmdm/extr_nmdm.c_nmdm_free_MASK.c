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
struct nmdmsoftc {int /*<<< orphan*/  ns_mtx; } ;
struct nmdmpart {TYPE_1__* np_other; int /*<<< orphan*/  np_task; int /*<<< orphan*/  np_callout; struct nmdmsoftc* np_pair; } ;
struct TYPE_2__ {int /*<<< orphan*/ * np_other; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NMDM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nmdmsoftc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmdm_count ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static void
FUNC7(void *softc)
{
	struct nmdmpart *np = (struct nmdmpart *)softc;
	struct nmdmsoftc *ns = np->np_pair;

	FUNC1(&np->np_callout);
	FUNC6(taskqueue_swi, &np->np_task);

	/*
	 * The function is called on both parts simultaneously.  We serialize
	 * with help of ns_mtx.  The first invocation should return and
	 * delegate freeing of resources to the second.
	 */
	FUNC4(&ns->ns_mtx);
	if (np->np_other != NULL) {
		np->np_other->np_other = NULL;
		FUNC5(&ns->ns_mtx);
		return;
	}
	FUNC3(&ns->ns_mtx);
	FUNC2(ns, M_NMDM);
	FUNC0(&nmdm_count, 1);
}