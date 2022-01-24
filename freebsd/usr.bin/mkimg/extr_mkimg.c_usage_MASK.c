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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static void
FUNC7(const char *why)
{

	FUNC6("error: %s", why);
	FUNC2('\n', stderr);
	FUNC1(stderr, "usage: %s <options>\n", FUNC3());

	FUNC1(stderr, "    options:\n");
	FUNC1(stderr, "\t--formats\t-  list image formats\n");
	FUNC1(stderr, "\t--schemes\t-  list partition schemes\n");
	FUNC1(stderr, "\t--version\t-  show version information\n");
	FUNC2('\n', stderr);
	FUNC1(stderr, "\t-a <num>\t-  mark num'th partion as active\n");
	FUNC1(stderr, "\t-b <file>\t-  file containing boot code\n");
	FUNC1(stderr, "\t-c <num>\t-  minimum capacity (in bytes) of the disk\n");
	FUNC1(stderr, "\t-C <num>\t-  maximum capacity (in bytes) of the disk\n");
	FUNC1(stderr, "\t-f <format>\n");
	FUNC1(stderr, "\t-o <file>\t-  file to write image into\n");
	FUNC1(stderr, "\t-p <partition>\n");
	FUNC1(stderr, "\t-s <scheme>\n");
	FUNC1(stderr, "\t-v\t\t-  increase verbosity\n");
	FUNC1(stderr, "\t-y\t\t-  [developers] enable unit test\n");
	FUNC1(stderr, "\t-H <num>\t-  number of heads to simulate\n");
	FUNC1(stderr, "\t-P <num>\t-  physical sector size\n");
	FUNC1(stderr, "\t-S <num>\t-  logical sector size\n");
	FUNC1(stderr, "\t-T <num>\t-  number of tracks to simulate\n");
	FUNC2('\n', stderr);
	FUNC4(1);
	FUNC2('\n', stderr);
	FUNC5(1);
	FUNC2('\n', stderr);
	FUNC1(stderr, "    partition specification:\n");
	FUNC1(stderr, "\t<t>[/<l>]::<size>[:[+]<offset>]\t-  "
	    "empty partition of given size and\n\t\t\t\t\t"
	    "   optional relative or absolute offset\n");
	FUNC1(stderr, "\t<t>[/<l>]:=<file>\t\t-  partition content and size "
	    "are\n\t\t\t\t\t   determined by the named file\n");
	FUNC1(stderr, "\t<t>[/<l>]:-<cmd>\t\t-  partition content and size "
	    "are taken\n\t\t\t\t\t   from the output of the command to run\n");
	FUNC1(stderr, "\t-\t\t\t\t-  unused partition entry\n");
	FUNC1(stderr, "\t    where:\n");
	FUNC1(stderr, "\t\t<t>\t-  scheme neutral partition type\n");
	FUNC1(stderr, "\t\t<l>\t-  optional scheme-dependent partition "
	    "label\n");

	FUNC0(EX_USAGE);
}