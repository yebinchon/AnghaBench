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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ inetdflag ; 
 scalar_t__ pmflag ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0(fout, "\n");
/*
 * Avoid making _msgout() static -- it's useful to have it visible
 * in the toplevel RPC server code.
 */
	FUNC0(fout, "static\n");
	FUNC0(fout, "void _msgout(const char* msg)\n");
	FUNC0(fout, "{\n");
	FUNC0(fout, "#ifdef RPC_SVC_FG\n");
	if (inetdflag || pmflag)
		FUNC0(fout, "\tif (_rpcpmstart)\n");
	FUNC0(fout, "\t\tsyslog(LOG_ERR, \"%%s\", msg);\n");
	FUNC0(fout, "\telse\n");
	FUNC0(fout,
		"\t\t(void) fprintf(stderr, \"%%s\\n\", msg);\n");
	FUNC0(fout, "#else\n");
	FUNC0(fout, "\tsyslog(LOG_ERR, \"%%s\", msg);\n");
	FUNC0(fout, "#endif\n");
	FUNC0(fout, "}\n");
}