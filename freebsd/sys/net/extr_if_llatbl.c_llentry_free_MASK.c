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
struct llentry {int la_flags; int /*<<< orphan*/  lle_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int LLE_LINKED ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct llentry*) ; 

size_t
FUNC6(struct llentry *lle)
{
	size_t pkts_dropped;

	FUNC3(lle);

	FUNC0((lle->la_flags & LLE_LINKED) == 0, ("freeing linked lle"));

	pkts_dropped = FUNC5(lle);

	/* cancel timer */
	if (FUNC4(&lle->lle_timer) > 0)
		FUNC2(lle);
	FUNC1(lle);

	return (pkts_dropped);
}