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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ inetdflag ; 
 scalar_t__ logflag ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 scalar_t__ tirpcflag ; 

__attribute__((used)) static void
FUNC2(const char *infile, const char *sp)
{
	FUNC0(fout, "#ifndef RPC_SVC_FG\n");
	FUNC0(fout, "%sint size;\n", sp);
	if (tirpcflag)
		FUNC0(fout, "%sstruct rlimit rl;\n", sp);
	if (inetdflag)
		FUNC0(fout, "%sint pid, i;\n\n", sp);
	FUNC0(fout, "%spid = fork();\n", sp);
	FUNC0(fout, "%sif (pid < 0) {\n", sp);
	FUNC0(fout, "%s\tperror(\"cannot fork\");\n", sp);
	FUNC0(fout, "%s\texit(1);\n", sp);
	FUNC0(fout, "%s}\n", sp);
	FUNC0(fout, "%sif (pid)\n", sp);
	FUNC0(fout, "%s\texit(0);\n", sp);
	/* get number of file descriptors */
	if (tirpcflag) {
		FUNC0(fout, "%srl.rlim_max = 0;\n", sp);
		FUNC0(fout, "%sif (getrlimit(RLIMIT_NOFILE, &rl) == -1) {\n",
		    sp);
		FUNC0(fout, "%s\tperror(\"getrlimit\");\n", sp);
		FUNC0(fout, "%s\texit(1);\n", sp);
		FUNC0(fout, "%s}\n", sp);
		FUNC0(fout, "%sif ((size = rl.rlim_max) == 0)\n", sp);
		FUNC0(fout, "%s\texit(1);\n", sp);
	} else {
		FUNC0(fout, "%ssize = getdtablesize();\n", sp);
	}

	FUNC0(fout, "%sfor (i = 0; i < size; i++)\n", sp);
	FUNC0(fout, "%s\t(void) close(i);\n", sp);
	/* Redirect stderr and stdout to console */
	FUNC0(fout, "%si = open(\"/dev/console\", 2);\n", sp);
	FUNC0(fout, "%s(void) dup2(i, 1);\n", sp);
	FUNC0(fout, "%s(void) dup2(i, 2);\n", sp);
	/* This removes control of the controlling terminal */
	if (tirpcflag)
		FUNC0(fout, "%ssetsid();\n", sp);
	else {
		FUNC0(fout, "%si = open(\"/dev/tty\", 2);\n", sp);
		FUNC0(fout, "%sif (i >= 0) {\n", sp);
		FUNC0(fout,
			"%s\t(void) ioctl(i, TIOCNOTTY, (char *)NULL);\n", sp);
		FUNC0(fout, "%s\t(void) close(i);\n", sp);
		FUNC0(fout, "%s}\n", sp);
	}
	if (!logflag)
		FUNC1(infile, sp);
	FUNC0(fout, "#endif\n");
	if (logflag)
		FUNC1(infile, sp);
}