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
struct syncache_head {int dummy; } ;
struct syncache {int dummy; } ;
struct in_conninfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct syncache*,struct syncache_head*) ; 
 struct syncache* FUNC5 (struct in_conninfo*,struct syncache_head**) ; 
 int /*<<< orphan*/  tcps_sc_badack ; 

void
FUNC6(struct in_conninfo *inc)
{
	struct syncache *sc;
	struct syncache_head *sch;

	if (FUNC3())
		return;
	sc = FUNC5(inc, &sch);	/* returns locked sch */
	FUNC0(sch);
	if (sc != NULL) {
		FUNC4(sc, sch);
		FUNC2(tcps_sc_badack);
	}
	FUNC1(sch);
}