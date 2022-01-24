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
struct lltable {struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int LLE_LINKED ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct lltable*,struct llentry*) ; 

__attribute__((used)) static void
FUNC5(struct lltable *llt, struct llentry *lle)
{
	struct ifnet *ifp;

	FUNC2(lle);
	FUNC1(llt != NULL, ("lltable is NULL"));

	/* Unlink entry from table */
	if ((lle->la_flags & LLE_LINKED) != 0) {

		ifp = llt->llt_ifp;
		FUNC0(ifp);
		FUNC4(llt, lle);
	}

	FUNC3(lle);
}