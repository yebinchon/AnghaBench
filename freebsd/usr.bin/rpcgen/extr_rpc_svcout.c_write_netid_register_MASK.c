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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,...) ; 
 scalar_t__ tirpcflag ; 

void
FUNC4(const char *transp)
{
	list *l;
	definition *def;
	version_list *vp;
	const char *sp;
	char tmpbuf[32];

	sp = "";
	FUNC0(fout, "\n");
	FUNC0(fout, "%s\tnconf = getnetconfigent(\"%s\");\n", sp, transp);
	FUNC0(fout, "%s\tif (nconf == NULL) {\n", sp);
	(void) FUNC3(_errbuf, "cannot find %s netid.", transp);
	FUNC3(tmpbuf, "%s\t\t", sp);
	FUNC1(tmpbuf);
	FUNC0(fout, "%s\t\texit(1);\n", sp);
	FUNC0(fout, "%s\t}\n", sp);
	if (tirpcflag) {
		FUNC0(fout, "%s\t%s = svc_tli_create(RPC_ANYFD, ",
		    sp, TRANSP);
		FUNC0(fout,"nconf, 0, RPC_MAXDATASIZE, RPC_MAXDATASIZE);\n");
	} else {
		FUNC0(fout,
		    "%s\t%s = svc_tli_create(RPC_ANYFD, nconf, 0, 0, 0);\n",
		    sp, TRANSP);
	}
	FUNC0(fout, "%s\tif (%s == NULL) {\n", sp, TRANSP);
	(void) FUNC3(_errbuf, "cannot create %s service.", transp);
	FUNC1(tmpbuf);
	FUNC0(fout, "%s\t\texit(1);\n", sp);
	FUNC0(fout, "%s\t}\n", sp);

	for (l = defined; l != NULL; l = l->next) {
		def = (definition *) l->val;
		if (def->def_kind != DEF_PROGRAM) {
			continue;
		}
		for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
			FUNC0(fout,
				"%s\t(void) rpcb_unset(%s, %s, nconf);\n",
				sp, def->def_name, vp->vers_name);
			FUNC0(fout,
				"%s\tif (!svc_reg(%s, %s, %s, ",
				sp, TRANSP, def->def_name, vp->vers_name);
			FUNC2(def->def_name, vp->vers_num);
			FUNC0(fout, ", nconf)) {\n");
			(void) FUNC3(_errbuf,
				"unable to register (%s, %s, %s).",
				def->def_name, vp->vers_name, transp);
			FUNC1(tmpbuf);
			FUNC0(fout, "%s\t\texit(1);\n", sp);
			FUNC0(fout, "%s\t}\n", sp);
		}
	}
	FUNC0(fout, "%s\tfreenetconfigent(nconf);\n", sp);
}