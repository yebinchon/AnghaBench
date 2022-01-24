#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * at_act; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 TYPE_1__* act_tbl ; 
 int FUNC0 (char**,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,char*) ; 

__attribute__((used)) static void
FUNC5(const char *lopt, const char *badact)
{
	char *opts, *oldopts;
	int i;

	opts = NULL;
	for (i = 0; act_tbl[i].at_act != NULL; i++) {
		oldopts = opts;
		if (FUNC0(&opts, "%s%s%s",
		    oldopts == NULL ? "" : oldopts,
		    oldopts == NULL ? "" : ", ",
		    act_tbl[i].at_act) == -1)
			FUNC1(EX_OSERR, "malloc");
		FUNC2(oldopts);
	}
	FUNC4("bad --%s argument '%s' must be one of (%s).",
	    lopt, badact, opts);
	FUNC3();
}