#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  vers_num; TYPE_4__* procs; struct TYPE_11__* next; } ;
typedef  TYPE_3__ version_list ;
struct TYPE_12__ {int /*<<< orphan*/  res_type; int /*<<< orphan*/  proc_name; struct TYPE_12__* next; } ;
typedef  TYPE_4__ proc_list ;
struct TYPE_9__ {TYPE_3__* versions; } ;
struct TYPE_10__ {TYPE_1__ pr; } ;
struct TYPE_13__ {int /*<<< orphan*/  def_name; TYPE_2__ def; } ;
typedef  TYPE_5__ definition ;

/* Variables and functions */
 int /*<<< orphan*/  RQSTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ mtflag ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(definition *def)
{
	version_list *vp;
	proc_list *proc;

	for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
		for (proc = vp->procs; proc != NULL; proc = proc->next) {
			FUNC0(fout, "\n");
			if (!mtflag) {
				FUNC4(proc);
				FUNC0(fout, "*\n");
			} else
				FUNC0(fout, "bool_t\n");
			FUNC3(proc->proc_name, vp->vers_num);
			FUNC1(proc, "result", RQSTP, "struct svc_req *");

			FUNC0(fout, "{\n");
			if (!mtflag) {
				FUNC0(fout, "\tstatic ");
				if(!FUNC5(proc->res_type, "void"))
					FUNC4(proc);
				else
					FUNC0(fout, "char *");
				/* cannot have void type */
				FUNC0(fout, " result;\n");
			}
			else
				FUNC0(fout, "\tbool_t retval;\n");
			FUNC0(fout,
				"\n\t/*\n\t * insert server code here\n\t */\n\n");

			if (!mtflag)
				if(!FUNC5(proc->res_type, "void"))
					FUNC0(fout, "\treturn (&result);\n}\n");
				else /* cast back to void * */
					FUNC0(fout, "\treturn((void *) &result);\n}\n");
			else
				FUNC0(fout, "\treturn (retval);\n}\n");
		}
		/* put in sample freeing routine */
		if (mtflag) {
		FUNC0(fout, "\nint\n");
		FUNC2(def->def_name, vp->vers_num);
		FUNC0(fout,"_freeresult(SVCXPRT *transp, xdrproc_t xdr_result, caddr_t result)\n");
		FUNC0(fout, "{\n");
		FUNC0(fout, "\t(void) xdr_free(xdr_result, result);\n");
		FUNC0(fout,
			"\n\t/*\n\t * Insert additional freeing code here, if needed\n\t */\n");
		FUNC0(fout, "\n}\n");

		
	}
	}
}