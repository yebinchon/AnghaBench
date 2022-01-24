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
struct sppp {int /*<<< orphan*/  (* if_start ) (struct ifnet*) ;int /*<<< orphan*/  ifstart_callout; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct sppp* FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct sppp*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  sppp_ifstart_sched ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct sppp *sp = FUNC0(ifp);

	if (FUNC1(sp)) {
		if (FUNC2(&sp->ifstart_callout))
			return;
		FUNC3(&sp->ifstart_callout, 1, sppp_ifstart_sched,
		    (void *)sp); 
	} else {
		sp->if_start(ifp);
	}
}