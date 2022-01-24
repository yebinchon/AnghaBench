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
struct nd_defrouter {int dummy; } ;
struct nd6_drhead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct nd6_drhead*,struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_nd6_defrouter ; 
 int /*<<< orphan*/  V_nd6_list_genid ; 
 int /*<<< orphan*/  dr_entry ; 

__attribute__((used)) static void
FUNC3(struct nd_defrouter *dr, struct nd6_drhead *drq)
{

	FUNC0();

	FUNC2(&V_nd6_defrouter, dr, dr_entry);
	V_nd6_list_genid++;
	if (drq != NULL)
		FUNC1(drq, dr, dr_entry);
}