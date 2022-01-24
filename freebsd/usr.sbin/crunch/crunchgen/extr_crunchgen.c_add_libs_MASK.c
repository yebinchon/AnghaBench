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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  curfilename ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  libs ; 
 int /*<<< orphan*/  libs_so ; 
 int /*<<< orphan*/  linenum ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC3(int argc, char **argv)
{
	int i;

	for(i = 1; i < argc; i++) {
		FUNC0(&libs, argv[i]);
		if ( FUNC1(&libs_so, argv[i]) )
			FUNC2("%s:%d: "
				"library `%s' specified as dynamic earlier",
				curfilename, linenum, argv[i]);
	}
}