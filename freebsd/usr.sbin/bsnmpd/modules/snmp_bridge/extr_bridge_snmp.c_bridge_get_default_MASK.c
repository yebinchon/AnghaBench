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
struct bridge_if {int /*<<< orphan*/  bif_name; } ;

/* Variables and functions */
 struct bridge_if* bif_default ; 
 struct mibif* FUNC0 () ; 
 struct mibif* FUNC1 (struct mibif*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct bridge_if *
FUNC3(void)
{
	struct mibif *ifp;

	if (bif_default != NULL) {

		/* Walk through the mibII interface list. */
		for (ifp = FUNC0(); ifp != NULL; ifp = FUNC1(ifp))
			if (FUNC2(ifp->name, bif_default->bif_name) == 0)
				break;

		if (ifp == NULL)
			bif_default = NULL;
	}

	return (bif_default);
}