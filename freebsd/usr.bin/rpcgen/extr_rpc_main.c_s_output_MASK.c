#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ def_kind; } ;
typedef  TYPE_1__ definition ;

/* Variables and functions */
 scalar_t__ DEF_PROGRAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char const**) ; 
 int exitnow ; 
 char const* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* FUNC5 () ; 
 int indefinitewait ; 
 scalar_t__ inetdflag ; 
 scalar_t__ logflag ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 scalar_t__ pmflag ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* svcclosetime ; 
 int timerflag ; 
 scalar_t__ tirpcflag ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void
FUNC13(int argc, const char *argv[], const char *infile, const char *define,
    int extend, const char *outfile, int nomain, int netflag)
{
	char *include;
	definition *def;
	int foundprogram = 0;
	const char *outfilename;

	FUNC6(infile, define);
	outfilename = extend ? FUNC2(infile, outfile) : outfile;
	FUNC7(infile, outfilename);
	FUNC0();
	if (infile && (include = FUNC2(infile, ".h"))) {
		FUNC3(fout, "#include \"%s\"\n", include);
		FUNC4(include);
	} else
		FUNC3(fout, "#include <rpc/rpc.h>\n");

	FUNC3(fout, "#include <stdio.h>\n");
	FUNC3(fout, "#include <stdlib.h> /* getenv, exit */\n");
	FUNC3 (fout, "#include <rpc/pmap_clnt.h> /* for pmap_unset */\n");
	FUNC3 (fout, "#include <string.h> /* strcmp */\n");
	if (tirpcflag)
		FUNC3(fout, "#include <rpc/rpc_com.h>\n");
	if (FUNC8(svcclosetime, "-1") == 0)
		indefinitewait = 1;
	else if (FUNC8(svcclosetime, "0") == 0)
		exitnow = 1;
	else if (inetdflag || pmflag) {
		FUNC3(fout, "#include <signal.h>\n");
		timerflag = 1;
	}

	if (!tirpcflag && inetdflag)
		FUNC3(fout, "#include <sys/ttycom.h> /* TIOCNOTTY */\n");
	if (inetdflag || pmflag) {
		FUNC3(fout, "#ifdef __cplusplus\n");
		FUNC3(fout,
			"#include <sys/sysent.h> /* getdtablesize, open */\n");
		FUNC3(fout, "#endif /* __cplusplus */\n");
	}
	if (tirpcflag) {
		FUNC3(fout, "#include <fcntl.h> /* open */\n");
		FUNC3(fout, "#include <unistd.h> /* fork / setsid */\n");
		FUNC3(fout, "#include <sys/types.h>\n");
	}

	FUNC3(fout, "#include <string.h>\n");
	if (inetdflag || !tirpcflag) {
		FUNC3(fout, "#include <sys/socket.h>\n");
		FUNC3(fout, "#include <netinet/in.h>\n");
	}

	if ((netflag || pmflag) && tirpcflag && !nomain) {
		FUNC3(fout, "#include <netconfig.h>\n");
	}
	if (tirpcflag)
		FUNC3(fout, "#include <sys/resource.h> /* rlimit */\n");
	if (logflag || inetdflag || pmflag || tirpcflag)
		FUNC3(fout, "#include <syslog.h>\n");

	FUNC3(fout, "\n#ifdef DEBUG\n#define	RPC_SVC_FG\n#endif\n");
	if (timerflag)
		FUNC3(fout, "\n#define	_RPCSVC_CLOSEDOWN %s\n",
			svcclosetime);
	while ( (def = FUNC5()) ) {
		foundprogram |= (def->def_kind == DEF_PROGRAM);
	}
	if (extend && !foundprogram) {
		(void) FUNC9(outfilename);
		return;
	}
	FUNC11(infile, netflag, nomain);
	if (!nomain) {
		if (!FUNC1(argc, argv)) {
			if (outfilename)
				(void) FUNC9(outfilename);
			FUNC10();
		}
		FUNC12();
	}
}