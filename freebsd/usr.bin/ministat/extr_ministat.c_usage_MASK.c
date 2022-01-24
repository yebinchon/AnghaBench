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
 int NCONF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * studentpct ; 

__attribute__((used)) static void
FUNC2(char const *whine)
{
	int i;

	FUNC1(stderr, "%s\n", whine);
	FUNC1(stderr,
	    "Usage: ministat [-C column] [-c confidence] [-d delimiter(s)] [-Ans] [-w width] [file [file ...]]\n");
	FUNC1(stderr, "\tconfidence = {");
	for (i = 0; i < NCONF; i++) {
		FUNC1(stderr, "%s%d%%",
		    i ? ", " : "",
		    studentpct[i]);
	}
	FUNC1(stderr, "}\n");
	FUNC1(stderr, "\t-A : print statistics only. suppress the graph.\n");
	FUNC1(stderr, "\t-C : column number to extract (starts and defaults to 1)\n");
	FUNC1(stderr, "\t-d : delimiter(s) string, default to \" \\t\"\n");
	FUNC1(stderr, "\t-n : print summary statistics only, no graph/test\n");
	FUNC1(stderr, "\t-s : print avg/median/stddev bars on separate lines\n");
	FUNC1(stderr, "\t-w : width of graph/test output (default 74 or terminal width)\n");
	FUNC0 (2);
}