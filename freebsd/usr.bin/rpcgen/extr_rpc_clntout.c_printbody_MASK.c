#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* argname; TYPE_4__* decls; } ;
struct TYPE_8__ {int arg_num; char* proc_name; int /*<<< orphan*/  res_type; TYPE_2__ args; int /*<<< orphan*/  res_prefix; } ;
typedef  TYPE_3__ proc_list ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {TYPE_1__ decl; struct TYPE_9__* next; } ;
typedef  TYPE_4__ decl_list ;
typedef  int bool_t ;

/* Variables and functions */
 char* RESULT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ mtflag ; 
 scalar_t__ newstyle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(proc_list *proc)
{
	decl_list *l;
	bool_t args2 = (proc->arg_num > 1);

	/*
	 * For new style with multiple arguments, need a structure in which
	 *  to stuff the arguments.
	 */
	

	if (newstyle && args2) {
		FUNC1(fout, "\t%s", proc->args.argname);
		FUNC1(fout, " arg;\n");
	}
	if (!mtflag) {
		FUNC1(fout, "\tstatic ");
		if (FUNC3(proc->res_type, "void")) {
			FUNC1(fout, "char ");
		} else {
			FUNC2(proc->res_prefix, proc->res_type, 0);
		}
		FUNC1(fout, "%s;\n", RESULT);
		FUNC1(fout, "\n");
		FUNC1(fout, "\tmemset((char *)%s%s, 0, sizeof (%s));\n",
			FUNC0(proc->res_type), RESULT, RESULT);

	}
	if (newstyle && !args2 &&
	    (FUNC3(proc->args.decls->decl.type, "void"))) {
		/* newstyle, 0 arguments */

		if (mtflag)
			FUNC1(fout, "\t return ");
		else
			FUNC1(fout, "\t if ");

		FUNC1(fout,
			"(clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_void, ",
			proc->proc_name);
		FUNC1(fout,
			"(caddr_t) NULL,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,",
			FUNC4(proc->res_type), (mtflag)?"":FUNC0(proc->res_type),
			RESULT);

		if (mtflag)
			FUNC1(fout, "\n\t\tTIMEOUT));\n");
		else
			FUNC1(fout, "\n\t\tTIMEOUT) != RPC_SUCCESS) {\n");

	} else if (newstyle && args2) {
		/*
		 * Newstyle, multiple arguments
		 * stuff arguments into structure
		 */
		for (l = proc->args.decls;  l != NULL; l = l->next) {
			FUNC1(fout, "\targ.%s = %s;\n",
				l->decl.name, l->decl.name);
		}
		if (mtflag)
			FUNC1(fout, "\treturn ");
		else
			FUNC1(fout, "\tif ");			
		FUNC1(fout,
			"(clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_%s",
			proc->proc_name,proc->args.argname);
		FUNC1(fout,
			", (caddr_t) &arg,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,",
			FUNC4(proc->res_type), (mtflag)?"":FUNC0(proc->res_type),
			RESULT);
		if (mtflag)
			FUNC1(fout, "\n\t\tTIMEOUT));\n");
		else
			FUNC1(fout, "\n\t\tTIMEOUT) != RPC_SUCCESS) {\n");
	} else {		/* single argument, new or old style */
		if (!mtflag)
			FUNC1(fout,
			"\tif (clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\tTIMEOUT) != RPC_SUCCESS) {\n",
			proc->proc_name,
			FUNC4(proc->args.decls->decl.type),
			(newstyle ? "&" : ""),
			(newstyle ? proc->args.decls->decl.name : "argp"),
			FUNC4(proc->res_type), FUNC0(proc->res_type),
			RESULT);
		else
			
		FUNC1(fout,
			"\treturn (clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\tTIMEOUT));\n",
			proc->proc_name,
			FUNC4(proc->args.decls->decl.type),
			(newstyle ? "&" : ""),
			(newstyle ? proc->args.decls->decl.name : "argp"),
			FUNC4(proc->res_type), "",
			RESULT);
	}
	if (!mtflag) {
		FUNC1(fout, "\t\treturn (NULL);\n");
		FUNC1(fout, "\t}\n");

		if (FUNC3(proc->res_type, "void")) {
			FUNC1(fout, "\treturn ((void *)%s%s);\n",
				FUNC0(proc->res_type), RESULT);
		} else {
			FUNC1(fout, "\treturn (%s%s);\n",
				FUNC0(proc->res_type), RESULT);
		}
	}
}