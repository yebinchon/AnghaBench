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
 int /*<<< orphan*/  DISKCOL ; 
 int /*<<< orphan*/  DISKROW ; 
 int /*<<< orphan*/  GENSTATCOL ; 
 int /*<<< orphan*/  GENSTATROW ; 
 int /*<<< orphan*/  GRAPHCOL ; 
 scalar_t__ GRAPHROW ; 
 scalar_t__ INTSCOL ; 
 scalar_t__ INTSROW ; 
 int LINES ; 
 int /*<<< orphan*/  MAXDRIVES ; 
 scalar_t__ MEMCOL ; 
 scalar_t__ MEMROW ; 
 int /*<<< orphan*/  NAMEICOL ; 
 scalar_t__ NAMEIROW ; 
 int /*<<< orphan*/  PAGECOL ; 
 scalar_t__ PAGEROW ; 
 int /*<<< orphan*/  PROCSCOL ; 
 scalar_t__ PROCSROW ; 
 scalar_t__ STATCOL ; 
 scalar_t__ STATROW ; 
 scalar_t__ VMSTATCOL ; 
 int VMSTATROW ; 
 scalar_t__ VNSTATCOL ; 
 scalar_t__ VNSTATROW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* intrloc ; 
 int /*<<< orphan*/ * intrname ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,char*,...) ; 
 int nintr ; 

void
FUNC3(void)
{
	int i, j;

	FUNC0();
	FUNC2(STATROW, STATCOL + 6, "users    Load");
	FUNC2(STATROW + 1, STATCOL + 3, "Mem usage:    %%Phy   %%Kmem");
	FUNC2(MEMROW, MEMCOL, "Mem: KB    REAL            VIRTUAL");
	FUNC2(MEMROW + 1, MEMCOL, "        Tot   Share      Tot    Share");
	FUNC2(MEMROW + 2, MEMCOL, "Act");
	FUNC2(MEMROW + 3, MEMCOL, "All");

	FUNC2(MEMROW + 1, MEMCOL + 41, "Free");

	FUNC2(PAGEROW, PAGECOL,     "         VN PAGER   SWAP PAGER");
	FUNC2(PAGEROW + 1, PAGECOL, "         in   out     in   out");
	FUNC2(PAGEROW + 2, PAGECOL, "count");
	FUNC2(PAGEROW + 3, PAGECOL, "pages");

	FUNC2(INTSROW, INTSCOL + 1, "Interrupts");
	FUNC2(INTSROW + 1, INTSCOL + 6, "total");

	FUNC2(VMSTATROW, VMSTATCOL + 9, "ioflt");
	FUNC2(VMSTATROW + 1, VMSTATCOL + 9, "cow");
	FUNC2(VMSTATROW + 2, VMSTATCOL + 9, "zfod");
	FUNC2(VMSTATROW + 3, VMSTATCOL + 9, "ozfod");
	FUNC2(VMSTATROW + 4, VMSTATCOL + 9 - 1, "%%ozfod");
	FUNC2(VMSTATROW + 5, VMSTATCOL + 9, "daefr");
	FUNC2(VMSTATROW + 6, VMSTATCOL + 9, "prcfr");
	FUNC2(VMSTATROW + 7, VMSTATCOL + 9, "totfr");
	FUNC2(VMSTATROW + 8, VMSTATCOL + 9, "react");
	FUNC2(VMSTATROW + 9, VMSTATCOL + 9, "pdwak");
	FUNC2(VMSTATROW + 10, VMSTATCOL + 9, "pdpgs");
	FUNC2(VMSTATROW + 11, VMSTATCOL + 9, "intrn");
	FUNC2(VMSTATROW + 12, VMSTATCOL + 9, "wire");
	FUNC2(VMSTATROW + 13, VMSTATCOL + 9, "act");
	FUNC2(VMSTATROW + 14, VMSTATCOL + 9, "inact");
	FUNC2(VMSTATROW + 15, VMSTATCOL + 9, "laund");
	FUNC2(VMSTATROW + 16, VMSTATCOL + 9, "free");
	if (LINES - 1 > VMSTATROW + 17)
		FUNC2(VMSTATROW + 17, VMSTATCOL + 9, "buf");

	FUNC2(GENSTATROW, GENSTATCOL, " Csw  Trp  Sys  Int  Sof  Flt");

	FUNC2(GRAPHROW, GRAPHCOL,
		"  . %%Sys    . %%Intr   . %%User   . %%Nice   . %%Idle");
	FUNC2(PROCSROW, PROCSCOL, "Proc:");
	FUNC2(PROCSROW + 1, PROCSCOL, "  r   p   d   s   w");
	FUNC2(GRAPHROW + 1, GRAPHCOL,
		"|    |    |    |    |    |    |    |    |    |    |");

	FUNC2(VNSTATROW, VNSTATCOL + 8, "dtbuf");
	FUNC2(VNSTATROW + 1, VNSTATCOL + 8, "desvn");
	FUNC2(VNSTATROW + 2, VNSTATCOL + 8, "numvn");
	FUNC2(VNSTATROW + 3, VNSTATCOL + 8, "frevn");

	FUNC2(NAMEIROW, NAMEICOL, "Namei     Name-cache   Dir-cache");
	FUNC2(NAMEIROW + 1, NAMEICOL,
		"   Calls    hits   %%    hits   %%");
	FUNC1(MAXDRIVES, DISKCOL, DISKROW);

	for (i = 0; i < nintr; i++) {
		if (intrloc[i] == 0)
			continue;
		FUNC2(intrloc[i], INTSCOL + 6, "%-10.10s", intrname[i]);
	}
}