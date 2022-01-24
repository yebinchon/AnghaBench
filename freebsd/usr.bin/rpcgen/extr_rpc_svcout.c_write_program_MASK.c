#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  vers_num; TYPE_7__* procs; struct TYPE_16__* next; } ;
typedef  TYPE_6__ version_list ;
struct TYPE_15__ {int /*<<< orphan*/  argname; TYPE_4__* decls; } ;
struct TYPE_17__ {int arg_num; int /*<<< orphan*/  proc_name; int /*<<< orphan*/  res_type; TYPE_5__ args; struct TYPE_17__* next; int /*<<< orphan*/  res_prefix; } ;
typedef  TYPE_7__ proc_list ;
struct TYPE_11__ {TYPE_6__* versions; } ;
struct TYPE_12__ {TYPE_1__ pr; } ;
struct TYPE_18__ {int /*<<< orphan*/  def_name; TYPE_2__ def; } ;
typedef  TYPE_8__ definition ;
struct TYPE_13__ {int /*<<< orphan*/  type; int /*<<< orphan*/  prefix; } ;
struct TYPE_14__ {TYPE_3__ decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG ; 
 int /*<<< orphan*/  RESULT ; 
 int /*<<< orphan*/  RETVAL ; 
 int /*<<< orphan*/  ROUTINE ; 
 int /*<<< orphan*/  RQSTP ; 
 int /*<<< orphan*/  TRANSP ; 
 int /*<<< orphan*/  _errbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ mtflag ; 
 scalar_t__ newstyle ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ timerflag ; 

__attribute__((used)) static void
FUNC12(definition *def, const char *storage)
{
	version_list *vp;
	proc_list *proc;
	int filled;

	for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
		FUNC0(fout, "\n");
		if (storage != NULL) {
			FUNC0(fout, "%s ", storage);
		}
		FUNC0(fout, "void\n");
		FUNC8(def->def_name, vp->vers_num);

		FUNC0(fout, "(struct svc_req *%s, ", RQSTP);
		FUNC0(fout, "SVCXPRT *%s)\n", TRANSP);
		FUNC0(fout, "{\n");

		filled = 0;
		FUNC0(fout, "\tunion {\n");
		for (proc = vp->procs; proc != NULL; proc = proc->next) {
			if (proc->arg_num < 2) { /* single argument */
				if (FUNC11(proc->args.decls->decl.type,
					  "void")) {
					continue;
				}
				filled = 1;
				FUNC0(fout, "\t\t");
				FUNC7(proc->args.decls->decl.prefix,
				      proc->args.decls->decl.type, 0);
				FUNC8(proc->proc_name, vp->vers_num);
				FUNC0(fout, "_arg;\n");

			} else {
				filled = 1;
				FUNC0(fout, "\t\t%s", proc->args.argname);
				FUNC0(fout, " ");
				FUNC8(proc->proc_name, vp->vers_num);
				FUNC0(fout, "_arg;\n");
			}
		}
		if (!filled) {
			FUNC0(fout, "\t\tint fill;\n");
		}
		FUNC0(fout, "\t} %s;\n", ARG);
	
		if (mtflag) {
			FUNC0(fout, "\tunion {\n");
			for (proc = vp->procs; proc != NULL; proc = proc->next) {
				if (FUNC11(proc->res_type, "void")) {
					continue;
				}
				FUNC0(fout, "\t\t");
				FUNC7(proc->res_prefix, proc->res_type, 0);
				FUNC8(proc->proc_name, vp->vers_num);
				FUNC0(fout, "_res;\n");
			}
			FUNC0(fout, "\t} %s;\n", RESULT);
			FUNC0(fout, "\tbool_t %s;\n", RETVAL);
			
		} else
			FUNC0(fout, "\tchar *%s;\n", RESULT);

		FUNC0(fout, "\txdrproc_t xdr_%s, xdr_%s;\n", ARG, RESULT);
		if (mtflag)
			FUNC0(fout,
				"\tbool_t (*%s)(char *, void *, struct svc_req *);\n",
				ROUTINE);
		else
			FUNC0(fout,
				"\tchar *(*%s)(char *, struct svc_req *);\n",
				ROUTINE);
		FUNC0(fout, "\n");

		if (timerflag) {
			if (mtflag)
				FUNC0(fout, "\tpthread_mutex_lock(&_svcstate_lock);\n");

			FUNC0(fout, "\t_rpcsvcstate = _SERVING;\n");				
			if (mtflag)
				FUNC0(fout, "\tpthread_mutex_unlock(&_svcstate_lock);\n");
		}

		FUNC0(fout, "\tswitch (%s->rq_proc) {\n", RQSTP);
		if (!FUNC1(vp->procs)) {
			FUNC0(fout, "\tcase NULLPROC:\n");
			FUNC0(fout,
				"\t\t(void) svc_sendreply(%s,\n\t\t\t"
				"(xdrproc_t) xdr_void, (char *)NULL);\n",
				TRANSP);
			FUNC4("\t\t");
			FUNC0(fout, "\n");
		}
		for (proc = vp->procs; proc != NULL; proc = proc->next) {
			FUNC0(fout, "\tcase %s:\n", proc->proc_name);
			if (proc->arg_num < 2) { /* single argument */
				FUNC2(ARG, proc->args.decls->decl.type);
			} else {
				FUNC2(ARG, proc->args.argname);
			}
			FUNC2(RESULT, proc->res_type);

			if (mtflag)
				FUNC0(fout,
					"\t\t%s = (bool_t (*) (char *,  void *,  struct svc_req *))",
					ROUTINE);
			else
				FUNC0(fout,
					"\t\t%s = (char *(*)(char *, struct svc_req *)) ",
					ROUTINE);
			if (newstyle) { /* new style: calls internal routine */
				FUNC0(fout, "_");
			}
			if (!newstyle)
				FUNC9(proc->proc_name, vp->vers_num);
			else
				FUNC8(proc->proc_name, vp->vers_num);
			FUNC0(fout, ";\n");
			FUNC0(fout, "\t\tbreak;\n\n");
		}
		FUNC0(fout, "\tdefault:\n");
		FUNC5("noproc", TRANSP);
		FUNC4("\t\t");
		FUNC0(fout, "\t}\n");

		FUNC0(fout,
			"\t(void) memset((char *)&%s, 0, sizeof (%s));\n",
			ARG, ARG);
		FUNC6("getargs", TRANSP, "(caddr_t) &", ARG);
		FUNC5("decode", TRANSP);
		FUNC4("\t\t");
		FUNC0(fout, "\t}\n");

		if (!mtflag)
			FUNC0(fout, "\t%s = (*%s)((char *)&%s, %s);\n",
				RESULT, ROUTINE, ARG, RQSTP);
		else
			FUNC0(fout, "\t%s = (bool_t) (*%s)((char *)&%s, (void *)&%s, %s);\n",
				RETVAL, ROUTINE, ARG, RESULT, RQSTP);


		if (mtflag)
			FUNC0(fout,
				"\tif (%s > 0 && !svc_sendreply(%s, xdr_%s, (char *)&%s)) {\n",
				RETVAL, TRANSP, RESULT, RESULT);
		else
			FUNC0(fout,
				"\tif (%s != NULL && !svc_sendreply(%s, xdr_%s, %s)) {\n",
				RESULT, TRANSP, RESULT, RESULT);

		FUNC5("systemerr", TRANSP);
		FUNC0(fout, "\t}\n");

		FUNC6("freeargs", TRANSP, "(caddr_t) &", ARG);
		(void) FUNC10(_errbuf, "unable to free arguments");
		FUNC3("\t\t");
		FUNC0(fout, "\t\texit(1);\n");
		FUNC0(fout, "\t}\n");
		/* print out free routine */
		if (mtflag) {
			FUNC0(fout,"\tif (!");
			FUNC8(def->def_name, vp->vers_num);
			FUNC0(fout,"_freeresult(%s, xdr_%s, (caddr_t) &%s))\n",
				TRANSP, RESULT, RESULT);
			(void) FUNC10(_errbuf, "unable to free results");
			FUNC3("\t\t");
			FUNC0(fout, "\n");
		}
		FUNC4("\t");
		FUNC0(fout, "}\n");
	}
}