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
 scalar_t__ inetdflag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,...) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

void
FUNC5(const char *transp)
{
	list *l;
	definition *def;
	version_list *vp;
	const char *sp;
	int isudp;
	char tmpbuf[32];

	if (inetdflag)
		sp = "\t";
	else
		sp = "";
	if (FUNC4(transp, "udp"))
		isudp = 1;
	else
		isudp = 0;
	FUNC0(fout, "\n");
	if (inetdflag) {
		FUNC0(fout,
			"\tif ((_rpcfdtype == 0) || (_rpcfdtype == %s)) {\n",
			isudp ? "SOCK_DGRAM" : "SOCK_STREAM");
	}
	FUNC0(fout, "%s\t%s = svc%s_create(%s",
		sp, TRANSP, transp, inetdflag? "sock": "RPC_ANYSOCK");
	if (!isudp)
		FUNC0(fout, ", 0, 0");
	FUNC0(fout, ");\n");
	FUNC0(fout, "%s\tif (%s == NULL) {\n", sp, TRANSP);
	(void) FUNC3(_errbuf, "cannot create %s service.", transp);
	(void) FUNC3(tmpbuf, "%s\t\t", sp);
	FUNC1(tmpbuf);
	FUNC0(fout, "%s\t\texit(1);\n", sp);
	FUNC0(fout, "%s\t}\n", sp);

	if (inetdflag) {
		FUNC0(fout, "%s\tif (!_rpcpmstart)\n\t", sp);
		FUNC0(fout, "%s\tproto = IPPROTO_%s;\n",
				sp, isudp ? "UDP": "TCP");
	}
	for (l = defined; l != NULL; l = l->next) {
		def = (definition *) l->val;
		if (def->def_kind != DEF_PROGRAM) {
			continue;
		}
		for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
			FUNC0(fout, "%s\tif (!svc_register(%s, %s, %s, ",
				sp, TRANSP, def->def_name, vp->vers_name);
			FUNC2(def->def_name, vp->vers_num);
			if (inetdflag)
				FUNC0(fout, ", proto)) {\n");
			else
				FUNC0(fout, ", IPPROTO_%s)) {\n",
					isudp ? "UDP": "TCP");
			(void) FUNC3(_errbuf,
				"unable to register (%s, %s, %s).",
				def->def_name, vp->vers_name, transp);
			FUNC1(tmpbuf);
			FUNC0(fout, "%s\t\texit(1);\n", sp);
			FUNC0(fout, "%s\t}\n", sp);
		}
	}
	if (inetdflag)
		FUNC0(fout, "\t}\n");
}