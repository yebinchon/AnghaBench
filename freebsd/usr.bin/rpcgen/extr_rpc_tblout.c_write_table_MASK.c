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
struct TYPE_15__ {TYPE_4__* decls; int /*<<< orphan*/  argname; } ;
struct TYPE_17__ {int arg_num; char* res_prefix; int /*<<< orphan*/  res_type; TYPE_5__ args; int /*<<< orphan*/  proc_name; int /*<<< orphan*/  proc_num; struct TYPE_17__* next; } ;
typedef  TYPE_7__ proc_list ;
struct TYPE_11__ {TYPE_6__* versions; } ;
struct TYPE_12__ {TYPE_1__ pr; } ;
struct TYPE_18__ {int /*<<< orphan*/  def_name; TYPE_2__ def; } ;
typedef  TYPE_8__ definition ;
struct TYPE_13__ {char* prefix; int /*<<< orphan*/  type; } ;
struct TYPE_14__ {TYPE_3__ decl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ newstyle ; 
 int nonfatalerrors ; 
 int /*<<< orphan*/  null_entry ; 
 scalar_t__ FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tbl_end ; 
 int /*<<< orphan*/  tbl_hdr ; 
 int /*<<< orphan*/  tbl_nproc ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void
FUNC10(definition *def)
{
	version_list *vp;
	proc_list *proc;
	int current;
	int expected;
	char progvers[100];
	int warning;

	for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
		warning = 0;
		FUNC8(progvers, "%s_%s",
		    FUNC3(def->def_name), vp->vers_num);
		/* print the table header */
		FUNC1(fout, tbl_hdr, progvers);

		if (FUNC4(vp->procs)) {
			expected = 0;
		} else {
			expected = 1;
			FUNC2(null_entry, fout);
		}
		for (proc = vp->procs; proc != NULL; proc = proc->next) {
			current = FUNC0(proc->proc_num);
			if (current != expected++) {
				FUNC1(fout,
			"\n/*\n * WARNING: table out of order\n */\n");
				if (warning == 0) {
					FUNC9("WARNING %s table is out of order", progvers);
					warning = 1;
					nonfatalerrors = 1;
				}
				expected = current + 1;
			}
			FUNC1(fout, "\n\t(char *(*)())RPCGEN_ACTION(");

			/* routine to invoke */
			if( !newstyle )
			  FUNC7(proc->proc_name, vp->vers_num);
			else {
			  if( newstyle )
			    FUNC1( fout, "_");   /* calls internal func */
			  FUNC6(proc->proc_name, vp->vers_num);
			}
			FUNC1(fout, "),\n");

			/* argument info */
			if( proc->arg_num > 1 )
			  FUNC5((char*) NULL, proc->args.argname );
			else
			  /* do we have to do something special for newstyle */
			  FUNC5( proc->args.decls->decl.prefix,
				  proc->args.decls->decl.type );
			/* result info */
			FUNC5(proc->res_prefix, proc->res_type);
		}

		/* print the table trailer */
		FUNC2(tbl_end, fout);
		FUNC1(fout, tbl_nproc, progvers, progvers, progvers);
	}
}