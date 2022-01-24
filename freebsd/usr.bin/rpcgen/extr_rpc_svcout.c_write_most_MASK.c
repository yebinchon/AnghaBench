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
 scalar_t__ inetdflag ; 
 scalar_t__ logflag ; 
 int mtflag ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ pmflag ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int timerflag ; 
 scalar_t__ tirpc_socket ; 
 scalar_t__ tirpcflag ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8(const char *infile, int netflag, int nomain)
{
	if (inetdflag || pmflag) {
		const char *var_type;
		var_type = (nomain? "extern" : "static");
		FUNC0(fout, "%s int _rpcpmstart;", var_type);
		FUNC0(fout, "\t\t/* Started by a port monitor ? */\n");
		if (!tirpcflag || tirpc_socket) {
			FUNC0(fout, "%s int _rpcfdtype;", var_type);
			FUNC0(fout, "\n\t\t /* Whether Stream or \
Datagram ? */\n");
		}

		if (timerflag) {
			FUNC0(fout, "	/* States a server can be in \
wrt request */\n\n");
			FUNC0(fout, "#define\t_IDLE 0\n");
			FUNC0(fout, "#define\t_SERVED 1\n");
			FUNC0(fout, "#define\t_SERVING 2\n\n");
			FUNC0(fout, "static int _rpcsvcstate = _IDLE;");
			FUNC0(fout, "\t /* Set when a request is \
serviced */\n");

			if (mtflag) {
				FUNC0(fout, "pthread_mutex_t _svcstate_lock;");
				FUNC0(fout, "\t\t\t/* Mutex lock for variable _rpcsvcstate */\n");

			}
				
		}

		FUNC7(nomain);
	}
	/* write out dispatcher and stubs */
	FUNC5((char *)NULL);

	if (nomain)
		return;

	FUNC0(fout, "\nint\n");
	FUNC0(fout, "main()\n");
	FUNC0(fout, "{\n");
	if (inetdflag) {
		FUNC3(infile);
		/* Includes call to write_rpc_svc_fg() */
	} else {
		if (tirpcflag) {
			if (netflag) {
				FUNC0(fout,
					"\tregister SVCXPRT *%s;\n", TRANSP);
				FUNC0(fout,
					"\tstruct netconfig *nconf = NULL;\n");
			}
			FUNC0(fout, "\tpid_t pid;\n");
			FUNC0(fout, "\tint i;\n");
			if (pmflag) {
				if (tirpc_socket) {
					FUNC0(fout, "\tstruct sockaddr_storage saddr;\n");
					FUNC0(fout, "\tsocklen_t asize = sizeof (saddr);\n\n");
				} else
					FUNC0(fout, "\tchar mname[FMNAMESZ + 1];\n\n");
			}

			if (mtflag & timerflag)
				FUNC0(fout, "\tmutex_init(&_svcstate_lock, USYNC_THREAD, NULL);\n");
			if (pmflag) {
				FUNC4(infile, netflag);
				FUNC0(fout, "\telse {\n");
				FUNC6(infile, "\t\t");
				FUNC0(fout, "\t}\n");
			} else
				FUNC6(infile, "\t\t");

		} else {
			FUNC0(fout, "\tregister SVCXPRT *%s;\n", TRANSP);
			FUNC0(fout, "\n");
			FUNC2("\t");
		}
	}

	if (logflag && !inetdflag) {
		FUNC1(infile, "\t");
	}
}