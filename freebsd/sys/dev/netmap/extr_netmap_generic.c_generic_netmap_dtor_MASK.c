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
struct netmap_generic_adapter {struct netmap_adapter* prev; } ;
struct netmap_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/ * ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_adapter*) ; 
 struct ifnet* FUNC2 (struct netmap_generic_adapter*) ; 
 scalar_t__ FUNC3 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct netmap_adapter *na)
{
	struct netmap_generic_adapter *gna = (struct netmap_generic_adapter*)na;
	struct ifnet *ifp = FUNC2(gna);
	struct netmap_adapter *prev_na = gna->prev;

	if (prev_na != NULL) {
		FUNC1(prev_na);
		if (FUNC3(na)) {
		        /*
		         * The driver has been removed without releasing
		         * the reference so we need to do it here.
		         */
		        FUNC1(prev_na);
		}
		FUNC4("Native netmap adapter for %s restored", prev_na->name);
	}
	FUNC0(ifp, prev_na);
	/*
	 * netmap_detach_common(), that it's called after this function,
	 * overrides WNA(ifp) if na->ifp is not NULL.
	 */
	na->ifp = NULL;
	FUNC4("Emulated netmap adapter for %s destroyed", na->name);
}