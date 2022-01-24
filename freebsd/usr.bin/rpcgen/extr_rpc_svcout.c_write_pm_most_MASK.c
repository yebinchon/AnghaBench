#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* vers_name; int /*<<< orphan*/  vers_num; struct TYPE_9__* next; } ;
typedef  TYPE_3__ version_list ;
struct TYPE_10__ {scalar_t__ val; struct TYPE_10__* next; } ;
typedef  TYPE_4__ list ;
struct TYPE_7__ {TYPE_3__* versions; } ;
struct TYPE_8__ {TYPE_1__ pr; } ;
struct TYPE_11__ {scalar_t__ def_kind; char* def_name; TYPE_2__ def; } ;
typedef  TYPE_5__ definition ;

/* Variables and functions */
 scalar_t__ DEF_PROGRAM ; 
 int /*<<< orphan*/  TRANSP ; 
 int /*<<< orphan*/  _errbuf ; 
 TYPE_4__* defined ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ timerflag ; 
 scalar_t__ tirpc_socket ; 
 scalar_t__ tirpcflag ; 

__attribute__((used)) static void
FUNC5(const char *infile, int netflag)
{
	list *l;
	definition *def;
	version_list *vp;

	if (tirpc_socket) {
		FUNC0(fout,
		"\tif (getsockname(0, (struct sockaddr *)&saddr, &asize) == 0) {\n");
		FUNC0(fout, "\t\tsocklen_t ssize = sizeof (int);\n");
	} else {
		FUNC0(fout, "\tif (!ioctl(0, I_LOOK, mname) &&\n");
		FUNC0(fout, "\t\t(!strcmp(mname, \"sockmod\") ||");
		FUNC0(fout, " !strcmp(mname, \"timod\"))) {\n");
	}
	FUNC0(fout, "\t\tchar *netid;\n");
	if (!netflag) {	/* Not included by -n option */
		FUNC0(fout, "\t\tstruct netconfig *nconf = NULL;\n");
		FUNC0(fout, "\t\tSVCXPRT *%s;\n", TRANSP);
	}
	if (timerflag)
		FUNC0(fout, "\t\tint pmclose;\n");
/*
 *  Not necessary, defined in /usr/include/stdlib
 *  f_print(fout, "\t\textern char *getenv();\n");
 */
	FUNC0(fout, "\n");
	if (tirpc_socket) {
		FUNC0(fout, "\t\tif (saddr.ss_family != AF_INET &&\n");
		FUNC0(fout, "\t\t    saddr.ss_family != AF_INET6)\n");
		FUNC0(fout, "\t\t\texit(1);\n");
		FUNC0(fout, "\t\tif (getsockopt(0, SOL_SOCKET, SO_TYPE,\n");
		FUNC0(fout, "\t\t\t\t(char *)&_rpcfdtype, &ssize) == -1)\n");
		FUNC0(fout, "\t\t\texit(1);\n");
	}
	FUNC0(fout, "\t\t_rpcpmstart = 1;\n");
	FUNC1(infile, "\t\t");
	FUNC0(fout, "\n\t\tif ((netid = \
getenv(\"NLSPROVIDER\")) == NULL) {\n");

	if (timerflag) {
		FUNC0(fout, "\t\t/* started from inetd */\n");
		FUNC0(fout, "\t\t\tpmclose = 1;\n");
	}
	FUNC0(fout,
		"\t\t} else {\n");
	FUNC0(fout, "\t\t\tif ((nconf = getnetconfigent(netid)) == NULL)\n");
	FUNC4(_errbuf, "cannot get transport info");
	FUNC2("\t\t\t\t");
       if (timerflag) {
		if (tirpc_socket)
			FUNC0(fout, "\n\t\t\tpmclose = 1;\t/* XXX */\n");
		else
			FUNC0(fout,
			    "\n\t\t\tpmclose = (t_getstate(0) != T_DATAXFER);\n");
	}
	FUNC0(fout, "\t\t}\n");
	/*
	 * A kludgy support for inetd services. Inetd only works with
	 * sockmod, and RPC works only with timod, hence all this jugglery
	 */
	if (!tirpc_socket) {
		FUNC0(fout, "\t\tif (strcmp(mname, \"sockmod\") == 0) {\n");
		FUNC0(fout, "\t\t\tif (ioctl(0, I_POP, 0) || ");
		FUNC0(fout, "ioctl(0, I_PUSH, \"timod\")) {\n");
		FUNC4(_errbuf, "could not get the right module");
		FUNC2("\t\t\t\t");
		FUNC0(fout, "\t\t\t\texit(1);\n");
		FUNC0(fout, "\t\t\t}\n");
		FUNC0(fout, "\t\t}\n");
	}
	if (tirpcflag) {
		FUNC0(fout,
		"\t\tif ((%s = svc_tli_create(0, nconf, NULL, \
		RPC_MAXDATASIZE, RPC_MAXDATASIZE)) \
		== NULL) {\n",
		TRANSP);
	} else {
		FUNC0(fout,
		    "\t\tif ((%s = svc_tli_create(0, nconf, NULL, 0, 0)) \
		    == NULL) {\n",
                    TRANSP);
	}
	FUNC4(_errbuf, "cannot create server handle");
	FUNC2("\t\t\t");
	FUNC0(fout, "\t\t\texit(1);\n");
	FUNC0(fout, "\t\t}\n");
	FUNC0(fout, "\t\tif (nconf)\n");
	FUNC0(fout, "\t\t\tfreenetconfigent(nconf);\n");
	for (l = defined; l != NULL; l = l->next) {
		def = (definition *) l->val;
		if (def->def_kind != DEF_PROGRAM) {
			continue;
		}
		for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
			FUNC0(fout,
				"\t\tif (!svc_reg(%s, %s, %s, ",
				TRANSP, def->def_name, vp->vers_name);
			FUNC3(def->def_name, vp->vers_num);
			FUNC0(fout, ", 0)) {\n");
			(void) FUNC4(_errbuf, "unable to register (%s, %s).",
					def->def_name, vp->vers_name);
			FUNC2("\t\t\t");
			FUNC0(fout, "\t\t\texit(1);\n");
			FUNC0(fout, "\t\t}\n");
		}
	}
	if (timerflag) {
		FUNC0(fout, "\t\tif (pmclose) {\n");
		FUNC0(fout, "\t\t\t(void) signal(SIGALRM, closedown);\n");
		FUNC0(fout, "\t\t\t(void) alarm(_RPCSVC_CLOSEDOWN/2);\n");
		FUNC0(fout, "\t\t}\n");
	}
	FUNC0(fout, "\t\tsvc_run();\n");
	FUNC0(fout, "\t\texit(1);\n");
	FUNC0(fout, "\t\t/* NOTREACHED */\n");
	FUNC0(fout, "\t}");
}