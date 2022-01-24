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
struct TYPE_15__ {int /*<<< orphan*/  vers_num; TYPE_6__* procs; struct TYPE_15__* next; } ;
typedef  TYPE_5__ version_list ;
struct TYPE_13__ {TYPE_8__* decls; int /*<<< orphan*/  argname; } ;
struct TYPE_16__ {int arg_num; TYPE_3__ args; int /*<<< orphan*/  proc_name; struct TYPE_16__* next; } ;
typedef  TYPE_6__ proc_list ;
struct TYPE_11__ {TYPE_5__* versions; } ;
struct TYPE_12__ {TYPE_1__ pr; } ;
struct TYPE_17__ {TYPE_2__ def; } ;
typedef  TYPE_7__ definition ;
struct TYPE_14__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  prefix; } ;
struct TYPE_18__ {TYPE_4__ decl; struct TYPE_18__* next; } ;
typedef  TYPE_8__ decl_list ;

/* Variables and functions */
 int /*<<< orphan*/  RESULT ; 
 int /*<<< orphan*/  RQSTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ mtflag ; 
 int /*<<< orphan*/  newstyle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(definition *def)
{
	version_list *vp;
	proc_list *proc;
	decl_list *l;

	if (!newstyle) return;  /* not needed for old style */
	for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
		for (proc = vp->procs; proc != NULL; proc = proc->next) {
			FUNC0(fout, "\n");
			if (!mtflag)
				FUNC2(proc);
			else
				FUNC0(fout, "int");
			FUNC0(fout, "\n_");
			FUNC4(proc->proc_name, vp->vers_num);
			FUNC0(fout, "(");
			/* arg name */
			if (proc->arg_num > 1)
				FUNC1(proc->args.argname, fout);
			else
				FUNC3(proc->args.decls->decl.prefix,
				      proc->args.decls->decl.type, 0);
			if (mtflag) {
				FUNC0(fout, " *argp, void *%s, struct svc_req *%s)\n",
					RESULT, RQSTP);


			}
			else
				FUNC0(fout, " *argp, struct svc_req *%s)\n",
					RQSTP);

			FUNC0(fout, "{\n");
			FUNC0(fout, "\treturn (");
			FUNC5(proc->proc_name, vp->vers_num);
			FUNC0(fout, "(");
			if (proc->arg_num < 2) { /* single argument */
				if (!FUNC6(proc->args.decls->decl.type, "void"))
					FUNC0(fout, "*argp, "); /* non-void */
			} else {
				for (l = proc->args.decls;  l != NULL;
				     l = l->next)
					FUNC0(fout, "argp->%s, ",
						l->decl.name);
			}
			if (mtflag)
				FUNC0(fout, "%s, ",RESULT);
			FUNC0(fout, "%s));\n}\n", RQSTP);
		}
	}
}