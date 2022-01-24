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
struct mibif {int /*<<< orphan*/  name; } ;
struct bridge_if {int /*<<< orphan*/  num_addrs; int /*<<< orphan*/  bif_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct bridge_if* FUNC1 () ; 
 struct bridge_if* FUNC2 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC4 (struct bridge_if*) ; 
 struct mibif* FUNC5 () ; 
 struct mibif* FUNC6 (struct mibif*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	struct mibif *ifp;
	struct bridge_if *bif, *t_bif;

	for (bif = FUNC1(); bif != NULL; bif = t_bif) {
		t_bif = FUNC2(bif);

		for (ifp = FUNC5(); ifp != NULL;
		    ifp = FUNC6(ifp))
			if (FUNC7(ifp->name, bif->bif_name) == 0)
				break;

		if (ifp != NULL)
			bif->num_addrs = FUNC4(bif);
		else  /* Ops, we don't exist anymore. */
			FUNC3(bif);
	}

	FUNC0();
}