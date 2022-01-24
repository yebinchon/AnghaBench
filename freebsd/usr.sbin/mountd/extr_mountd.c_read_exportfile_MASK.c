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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** exnames ; 
 int /*<<< orphan*/ * exp_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(int passno)
{
	int done, i;

	/*
	 * Read in the exports file and build the list, calling
	 * nmount() as we go along to push the export rules into the kernel.
	 */
	done = 0;
	for (i = 0; exnames[i] != NULL; i++) {
		if (debug)
			FUNC5("reading exports from %s", exnames[i]);
		if ((exp_file = FUNC2(exnames[i], "r")) == NULL) {
			FUNC4(LOG_WARNING, "can't open %s", exnames[i]);
			continue;
		}
		FUNC3(passno);
		FUNC1(exp_file);
		done++;
	}
	if (done == 0) {
		FUNC4(LOG_ERR, "can't open any exports file");
		FUNC0(2);
	}
}