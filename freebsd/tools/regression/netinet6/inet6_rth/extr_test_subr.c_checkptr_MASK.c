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
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int LINESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* g_errbuf ; 
 int /*<<< orphan*/  g_fail ; 
 char* g_funcname ; 
 int /*<<< orphan*/  g_pass ; 
 char* g_testdesc ; 
 int g_total ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int,char const*,...) ; 

void
FUNC4(caddr_t expected, caddr_t got, const char *desc)
{
	int  len;
	int  failed;
	char sbuf[LINESIZE];

	FUNC1((void *)sbuf, 0, LINESIZE);
	FUNC3(g_testdesc, LINESIZE, desc);

	failed = 1;
	g_total++;
	if (got == expected) {
		len = FUNC3(sbuf, LINESIZE, "ok");
		g_pass++;
		failed = 0;
	} else {
		len = FUNC3(sbuf, LINESIZE, "not ok");
		FUNC3(g_errbuf, LINESIZE, " : Expected %#x, but got %#x",
		    (unsigned int)expected, (unsigned int)got);
		g_fail++;
	}
	FUNC3(sbuf + len, LINESIZE - len, " %d - %s (%s)",
	    g_total, g_funcname, g_testdesc);
	FUNC2(sbuf);
	if (failed)
		FUNC2(g_errbuf);
	FUNC2("\n");
	FUNC0(NULL);
	FUNC1((void *)g_errbuf, 0, LINESIZE);
	FUNC1((void *)g_testdesc, 0, LINESIZE);
}