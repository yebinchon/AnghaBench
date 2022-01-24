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
struct if_clone {scalar_t__ ifc_type; int /*<<< orphan*/  ifc_iflist; scalar_t__ ifcs_minifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct if_clone*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct if_clone*,int /*<<< orphan*/ ) ; 
 scalar_t__ SIMPLE ; 
 int /*<<< orphan*/  V_if_cloners_count ; 
 int /*<<< orphan*/  FUNC6 (struct if_clone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifc_list ; 

void
FUNC7(struct if_clone *ifc)
{

	FUNC0();
	FUNC5(ifc, ifc_list);
	V_if_cloners_count--;
	FUNC1();

	/* Allow all simples to be destroyed */
	if (ifc->ifc_type == SIMPLE)
		ifc->ifcs_minifs = 0;

	/* destroy all interfaces for this cloner */
	while (!FUNC3(&ifc->ifc_iflist))
		FUNC6(ifc, FUNC4(&ifc->ifc_iflist));

	FUNC2(ifc);
}