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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "options:\n");
	FUNC1(stderr, "-a\t\tgenerate all files, including samples\n");
	FUNC1(stderr, "-b\t\tbackward compatibility mode (generates code \
for FreeBSD 4.X)\n");
	FUNC1(stderr, "-c\t\tgenerate XDR routines\n");
	FUNC1(stderr, "-C\t\tANSI C mode\n");
	FUNC1(stderr, "-Dname[=value]\tdefine a symbol (same as #define)\n");
	FUNC1(stderr, "-h\t\tgenerate header file\n");
	FUNC1(stderr, "-i size\t\tsize at which to start generating\
inline code\n");
	FUNC1(stderr, "-I\t\tgenerate code for inetd support in server\n");
	FUNC1(stderr, "-K seconds\tserver exits after K seconds of\
inactivity\n");
	FUNC1(stderr, "-l\t\tgenerate client side stubs\n");
	FUNC1(stderr, "-L\t\tserver errors will be printed to syslog\n");
	FUNC1(stderr, "-m\t\tgenerate server side stubs\n");
	FUNC1(stderr, "-M\t\tgenerate MT-safe code\n");
	FUNC1(stderr, "-n netid\tgenerate server code that supports\
named netid\n");
	FUNC1(stderr, "-N\t\tsupports multiple arguments and\
call-by-value\n");
	FUNC1(stderr, "-o outfile\tname of the output file\n");
	FUNC1(stderr, "-P\t\tgenerate code for port monitoring support in server\n");
	FUNC1(stderr, "-s nettype\tgenerate server code that supports named\
nettype\n");
	FUNC1(stderr, "-Sc\t\tgenerate sample client code that uses remote\
procedures\n");
	FUNC1(stderr, "-Ss\t\tgenerate sample server code that defines\
remote procedures\n");
	FUNC1(stderr, "-Sm \t\tgenerate makefile template \n");

	FUNC1(stderr, "-t\t\tgenerate RPC dispatch table\n");
	FUNC1(stderr, "-T\t\tgenerate code to support RPC dispatch tables\n");
	FUNC1(stderr, "-Y path\t\tpath where cpp is found\n");
	FUNC0(1);
}