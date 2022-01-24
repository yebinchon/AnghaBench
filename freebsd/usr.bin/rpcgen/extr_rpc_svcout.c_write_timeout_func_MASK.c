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
 scalar_t__ mtflag ; 
 scalar_t__ pmflag ; 
 int /*<<< orphan*/  timerflag ; 
 scalar_t__ tirpcflag ; 

__attribute__((used)) static void
FUNC1(void)
{
	if (!timerflag)
		return;

	FUNC0(fout, "\n");
	FUNC0(fout, "static void\n");
	FUNC0(fout, "closedown(int sig)\n");
	FUNC0(fout, "{\n");
	if (mtflag)
		FUNC0(fout, "\tpthread_mutex_lock(&_svcstate_lock);\n");
	FUNC0(fout, "\tif (_rpcsvcstate == _IDLE) {\n");
	FUNC0(fout, "\t\textern fd_set svc_fdset;\n");
	FUNC0(fout, "\t\tstatic int size;\n");
	FUNC0(fout, "\t\tint i, openfd;\n");
	if (tirpcflag && pmflag) {
		FUNC0(fout, "\t\tstruct t_info tinfo;\n\n");
		FUNC0(fout,
			"\t\tif (!t_getinfo(0, &tinfo) && (tinfo.servtype == T_CLTS))\n");
	} else {
		FUNC0(fout, "\n\t\tif (_rpcfdtype == SOCK_DGRAM)\n");
	}
	FUNC0(fout, "\t\t\texit(0);\n");
	FUNC0(fout, "\t\tif (size == 0) {\n");
	if (tirpcflag) {
		FUNC0(fout, "\t\t\tstruct rlimit rl;\n\n");
		FUNC0(fout, "\t\t\trl.rlim_max = 0;\n");
		FUNC0(fout, "\t\t\tif (getrlimit(RLIMIT_NOFILE, &rl) == -1)\n");
		FUNC0(fout, "\t\t\t\treturn;\n");
		FUNC0(fout, "\t\t\tif ((size = rl.rlim_max) == 0) {\n");
		
		if (mtflag)
			FUNC0(fout, "\t\t\t\tpthread_mutex_unlock(&_svcstate_lock);\n");

		FUNC0(fout, "\t\t\t\treturn;\n\t\t\t}\n");
	} else {
		FUNC0(fout, "\t\t\tsize = getdtablesize();\n");
	}
	FUNC0(fout, "\t\t}\n");
	FUNC0(fout,
		"\t\tfor (i = 0, openfd = 0; i < size && openfd < 2; i++)\n");
	FUNC0(fout, "\t\t\tif (FD_ISSET(i, &svc_fdset))\n");
	FUNC0(fout, "\t\t\t\topenfd++;\n");
	FUNC0(fout, "\t\tif (openfd <= 1)\n");
	FUNC0(fout, "\t\t\texit(0);\n");
	FUNC0(fout, "\t}\n");
	FUNC0(fout, "\tif (_rpcsvcstate == _SERVED)\n");
	FUNC0(fout, "\t\t_rpcsvcstate = _IDLE;\n\n");
	if (mtflag)
		FUNC0(fout, "\tpthread_mutex_unlock(&_svcstate_lock);\n");

	FUNC0(fout, "\t(void) signal(SIGALRM, closedown);\n");
	FUNC0(fout, "\t(void) alarm(_RPCSVC_CLOSEDOWN/2);\n");
	FUNC0(fout, "}\n");

}