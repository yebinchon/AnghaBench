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

/* Variables and functions */
 int DATA_RANGE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ execname ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char *base = (char *)"file_write";
	char *exec = (char *)execname;

	if (exec != NULL)
		exec = FUNC4(exec);
	if (exec != NULL)
		base = FUNC0(exec);

	(void) FUNC3("Usage: %s [-v] -o {create,overwrite,append} -f file_name"
	    " [-b block_size]\n"
	    "\t[-s offset] [-c write_count] [-d data]\n"
	    "\twhere [data] equal to zero causes chars "
	    "0->%d to be repeated throughout\n", base, DATA_RANGE);

	if (exec) {
		FUNC2(exec);
	}

	FUNC1(1);
}