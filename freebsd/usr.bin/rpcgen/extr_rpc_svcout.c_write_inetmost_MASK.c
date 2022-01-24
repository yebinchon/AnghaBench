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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static void
FUNC4(const char *infile)
{
	FUNC0(fout, "\tregister SVCXPRT *%s;\n", TRANSP);
	FUNC0(fout, "\tint sock;\n");
	FUNC0(fout, "\tint proto;\n");
	FUNC0(fout, "\tstruct sockaddr_in saddr;\n");
	FUNC0(fout, "\tsocklen_t asize = sizeof (saddr);\n");
	FUNC0(fout, "\n");
	FUNC0(fout,
	"\tif (getsockname(0, (struct sockaddr *)&saddr, &asize) == 0) {\n");
	FUNC0(fout, "\t\tsocklen_t ssize = sizeof (int);\n\n");
	FUNC0(fout, "\t\tif (saddr.sin_family != AF_INET)\n");
	FUNC0(fout, "\t\t\texit(1);\n");
	FUNC0(fout, "\t\tif (getsockopt(0, SOL_SOCKET, SO_TYPE,\n");
	FUNC0(fout, "\t\t\t\t(char *)&_rpcfdtype, &ssize) == -1)\n");
	FUNC0(fout, "\t\t\texit(1);\n");
	FUNC0(fout, "\t\tsock = 0;\n");
	FUNC0(fout, "\t\t_rpcpmstart = 1;\n");
	FUNC0(fout, "\t\tproto = 0;\n");
	FUNC1(infile, "\t\t");
	FUNC0(fout, "\t} else {\n");
	FUNC3(infile, "\t\t");
	FUNC0(fout, "\t\tsock = RPC_ANYSOCK;\n");
	FUNC2("\t\t");
	FUNC0(fout, "\t}\n");
}