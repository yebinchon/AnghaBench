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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ widemode ; 

__attribute__((used)) static void
FUNC2(int clientOnly, int serverOnly, int newStats)
{

	if (newStats) {
		FUNC1(" [%s Read %s]  [%s Write %s]  "
		    "%s[=========== Total ============]\n"
		    " KB/t   tps    MB/s%s  KB/t   tps    MB/s%s  "
		    "%sKB/t   tps    MB/s    ms  ql  %%b",
		    widemode ? "========" : "=====",
		    widemode ? "========" : "=====",
		    widemode ? "========" : "=====",
		    widemode ? "======="  : "====",
		    widemode ? "[Commit ]  " : "",
		    widemode ? "    ms" : "",
		    widemode ? "    ms" : "",
		    widemode ? "tps    ms  " : "");
	} else {
		FUNC1("%s%6.6s %6.6s %6.6s %6.6s %6.6s %6.6s %6.6s %6.6s",
		    ((serverOnly && clientOnly) ? "        " : " "),
		    "GtAttr", "Lookup", "Rdlink", "Read", "Write", "Rename",
		    "Access", "Rddir");
		if (widemode && clientOnly) {
			FUNC1(" Attr Lkup BioR BioW Accs BioD");
		}
	}
	FUNC1("\n");
	FUNC0(stdout);
}