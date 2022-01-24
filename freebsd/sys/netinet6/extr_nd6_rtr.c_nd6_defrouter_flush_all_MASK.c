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
 int /*<<< orphan*/  FUNC1 () ; 
 struct nd_defrouter* FUNC2 (struct nd6_drhead*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd6_drhead*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd6_drhead*,struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 struct nd6_drhead V_nd6_defrouter ; 
 int /*<<< orphan*/  FUNC5 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC6 (struct nd_defrouter*,struct nd6_drhead*) ; 
 int /*<<< orphan*/  dr_entry ; 

void
FUNC7(void)
{
	struct nd_defrouter *dr;
	struct nd6_drhead drq;

	FUNC3(&drq);

	FUNC0();
	while ((dr = FUNC2(&V_nd6_defrouter)) != NULL)
		FUNC6(dr, &drq);
	FUNC1();

	while ((dr = FUNC2(&drq)) != NULL) {
		FUNC4(&drq, dr, dr_entry);
		FUNC5(dr);
	}
}