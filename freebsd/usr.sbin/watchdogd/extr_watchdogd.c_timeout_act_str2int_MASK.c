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
struct TYPE_2__ {int at_value; int /*<<< orphan*/ * at_act; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 TYPE_1__* act_tbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(const char *lopt, const char *acts)
{
	int i;
	char *dupacts, *tofree;
	char *o;
	int rv = 0;

	tofree = dupacts = FUNC3(acts);
	if (!tofree)
		FUNC0(EX_OSERR, "malloc");
	while ((o = FUNC4(&dupacts, ",")) != NULL) {
		for (i = 0; act_tbl[i].at_act != NULL; i++) {
			if (!FUNC2(o, act_tbl[i].at_act)) {
				rv |= act_tbl[i].at_value;
				break;
			}
		}
		if (act_tbl[i].at_act == NULL)
			FUNC5(lopt, o);
	}
	FUNC1(tofree);
	return rv;
}