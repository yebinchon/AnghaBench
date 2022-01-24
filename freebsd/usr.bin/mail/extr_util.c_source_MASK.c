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
struct TYPE_2__ {scalar_t__ s_loading; int /*<<< orphan*/  s_cond; int /*<<< orphan*/ * s_file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int SSTACK_SIZE ; 
 int /*<<< orphan*/  cond ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * input ; 
 scalar_t__ loading ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  sourcing ; 
 int ssp ; 
 TYPE_1__* sstack ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int
FUNC5(char **arglist)
{
	FILE *fi;
	char *cp;

	if ((cp = FUNC2(*arglist)) == NULL)
		return (1);
	if ((fi = FUNC1(cp, "r")) == NULL) {
		FUNC4("%s", cp);
		return (1);
	}
	if (ssp >= SSTACK_SIZE - 1) {
		FUNC3("Too much \"sourcing\" going on.\n");
		(void)FUNC0(fi);
		return (1);
	}
	sstack[ssp].s_file = input;
	sstack[ssp].s_cond = cond;
	sstack[ssp].s_loading = loading;
	ssp++;
	loading = 0;
	cond = CANY;
	input = fi;
	sourcing++;
	return (0);
}