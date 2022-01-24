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
struct commandline {int makefileflag; char* outfile; int /*<<< orphan*/  infile; scalar_t__ nflag; scalar_t__ mflag; scalar_t__ hflag; scalar_t__ Scflag; scalar_t__ Ssflag; scalar_t__ tflag; scalar_t__ sflag; scalar_t__ lflag; scalar_t__ cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_EXTEND ; 
 int /*<<< orphan*/  EXTEND ; 
 int allc ; 
 scalar_t__ allfiles ; 
 int allnc ; 
 char const** allnv ; 
 char const** allv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ inetdflag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct commandline*) ; 
 int /*<<< orphan*/  nonfatalerrors ; 
 int /*<<< orphan*/  FUNC8 (int,char const**,struct commandline*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char const**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ tblflag ; 
 int /*<<< orphan*/  tirpcflag ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, const char *argv[])
{
	struct commandline cmd;

	(void) FUNC6((char *)&cmd, 0, sizeof (struct commandline));
	if (!FUNC8(argc, argv, &cmd))
		FUNC13();
	/*
	 * Only the client and server side stubs are likely to be customized,
	 *  so in that case only, check if the outfile exists, and if so,
	 *  print an error message and exit.
	 */
	if (cmd.Ssflag || cmd.Scflag || cmd.makefileflag) {
		FUNC1(cmd.infile, cmd.outfile);
	}
	else
		FUNC1(cmd.infile, NULL);

	if (cmd.cflag) {
		FUNC0(cmd.infile, "-DRPC_XDR", DONT_EXTEND, cmd.outfile);
	} else if (cmd.hflag) {
		FUNC4(cmd.infile, "-DRPC_HDR", DONT_EXTEND, cmd.outfile,
		    cmd.hflag);
	} else if (cmd.lflag) {
		FUNC5(cmd.infile, "-DRPC_CLNT", DONT_EXTEND, cmd.outfile);
	} else if (cmd.sflag || cmd.mflag || (cmd.nflag)) {
		FUNC10(argc, argv, cmd.infile, "-DRPC_SVC", DONT_EXTEND,
			cmd.outfile, cmd.mflag, cmd.nflag);
	} else if (cmd.tflag) {
		FUNC12(cmd.infile, "-DRPC_TBL", DONT_EXTEND, cmd.outfile);
	} else if  (cmd.Ssflag) {
		FUNC11(cmd.infile, "-DRPC_SERVER", DONT_EXTEND,
			cmd.outfile);
	} else if (cmd.Scflag) {
		FUNC2(cmd.infile, "-DRPC_CLIENT", DONT_EXTEND,
			    cmd.outfile);
	} else if (cmd.makefileflag) {
		FUNC7(&cmd);
	} else {
		/* the rescans are required, since cpp may effect input */
		FUNC0(cmd.infile, "-DRPC_XDR", EXTEND, "_xdr.c");
		FUNC9();
		FUNC4(cmd.infile, "-DRPC_HDR", EXTEND, ".h", cmd.hflag);
		FUNC9();
		FUNC5(cmd.infile, "-DRPC_CLNT", EXTEND, "_clnt.c");
		FUNC9();
		if (inetdflag || !tirpcflag)
			FUNC10(allc, allv, cmd.infile, "-DRPC_SVC", EXTEND,
			"_svc.c", cmd.mflag, cmd.nflag);
		else
			FUNC10(allnc, allnv, cmd.infile, "-DRPC_SVC",
				EXTEND, "_svc.c", cmd.mflag, cmd.nflag);
		if (tblflag) {
			FUNC9();
			FUNC12(cmd.infile, "-DRPC_TBL", EXTEND, "_tbl.i");
		}

		if (allfiles) {
			FUNC9();
			FUNC11(cmd.infile, "-DRPC_SERVER", EXTEND,
				"_server.c");
			FUNC9();
			FUNC2(cmd.infile, "-DRPC_CLIENT", EXTEND,
				"_client.c");

		}
		if (allfiles || (cmd.makefileflag == 1)){
			FUNC9();
			FUNC7(&cmd);
		}

	}
	FUNC3(nonfatalerrors);
	/* NOTREACHED */
}