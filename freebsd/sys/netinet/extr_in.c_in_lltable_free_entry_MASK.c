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
struct lltable {int /*<<< orphan*/  llt_ifp; } ;
struct llentry {int la_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int LLE_LINKED ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 int /*<<< orphan*/  dropped ; 
 size_t FUNC4 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct lltable*,struct llentry*) ; 

__attribute__((used)) static void
FUNC6(struct lltable *llt, struct llentry *lle)
{
	size_t pkts_dropped;

	FUNC3(lle);
	FUNC2(llt != NULL, ("lltable is NULL"));

	/* Unlink entry from table if not already */
	if ((lle->la_flags & LLE_LINKED) != 0) {
		FUNC1(llt->llt_ifp);
		FUNC5(llt, lle);
	}

	/* Drop hold queue */
	pkts_dropped = FUNC4(lle);
	FUNC0(dropped, pkts_dropped);
}