#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  vers_num; TYPE_4__* procs; int /*<<< orphan*/  vers_name; struct TYPE_14__* next; } ;
typedef  TYPE_3__ version_list ;
struct TYPE_15__ {int /*<<< orphan*/  proc_num; int /*<<< orphan*/  proc_name; struct TYPE_15__* next; } ;
typedef  TYPE_4__ proc_list ;
struct TYPE_12__ {TYPE_3__* versions; int /*<<< orphan*/  prog_num; } ;
struct TYPE_13__ {TYPE_1__ pr; } ;
struct TYPE_16__ {int /*<<< orphan*/  def_name; TYPE_2__ def; } ;
typedef  TYPE_5__ definition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ tblflag ; 

__attribute__((used)) static void
FUNC8(definition *def, int headeronly)
{
	version_list *vers;
	proc_list *proc;
	const char *ext;

	FUNC3(def);

	FUNC7(def->def_name, def->def.pr.prog_num);
	for (vers = def->def.pr.versions; vers != NULL; vers = vers->next) {
		if (tblflag) {
			FUNC1(fout,
				"extern struct rpcgen_table %s_%s_table[];\n",
				FUNC2(def->def_name), vers->vers_num);
			FUNC1(fout,
				"extern %s_%s_nproc;\n",
				FUNC2(def->def_name), vers->vers_num);
		}
		FUNC7(vers->vers_name, vers->vers_num);

		FUNC1(fout, "\n");
		ext = "extern  ";
		if (headeronly) {
			FUNC1(fout, "%s", ext);
			FUNC4(def->def_name, vers->vers_num);
		}
		for (proc = vers->procs; proc != NULL; proc = proc->next) {
			if (!FUNC0(proc, def->def.pr.versions)) {
				FUNC7(proc->proc_name, proc->proc_num);
			}
			FUNC1(fout, "%s", ext);
			FUNC6(proc, vers, "CLIENT *", 0);
			FUNC1(fout, "%s", ext);
			FUNC6(proc, vers, "struct svc_req *", 1);
		}
		FUNC5(def->def_name, vers->vers_num);
	}
}