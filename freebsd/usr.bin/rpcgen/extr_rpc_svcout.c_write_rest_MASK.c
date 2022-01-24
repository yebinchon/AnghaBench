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
 int /*<<< orphan*/  TRANSP ; 
 int /*<<< orphan*/  _errbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ inetdflag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ timerflag ; 

void
FUNC3(void)
{
	FUNC0(fout, "\n");
	if (inetdflag) {
		FUNC0(fout, "\tif (%s == (SVCXPRT *)NULL) {\n", TRANSP);
		(void) FUNC2(_errbuf, "could not create a handle");
		FUNC1("\t\t");
		FUNC0(fout, "\t\texit(1);\n");
		FUNC0(fout, "\t}\n");
		if (timerflag) {
			FUNC0(fout, "\tif (_rpcpmstart) {\n");
			FUNC0(fout,
				"\t\t(void) signal(SIGALRM, closedown);\n");
			FUNC0(fout, "\t\t(void) \
alarm(_RPCSVC_CLOSEDOWN/2);\n");
			FUNC0(fout, "\t}\n");
		}
	}
	FUNC0(fout, "\tsvc_run();\n");
	(void) FUNC2(_errbuf, "svc_run returned");
	FUNC1("\t");
	FUNC0(fout, "\texit(1);\n");
	FUNC0(fout, "\t/* NOTREACHED */\n");
	FUNC0(fout, "}\n");
}