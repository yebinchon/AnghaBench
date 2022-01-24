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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ pauseall ; 
 scalar_t__ pausefst ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(int pagecnt)
{
	int pch;
	FILE *ttyfp;

	if ((pauseall || (pausefst && pagecnt == 1)) &&
	    FUNC3(STDOUT_FILENO)) {
		if ((ttyfp = FUNC1("/dev/tty", "r")) != NULL) {
			(void)FUNC4('\a', stderr);
			while ((pch = FUNC2(ttyfp)) != '\n' && pch != EOF)
				;
			(void)FUNC0(ttyfp);
		}
	}
}