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
struct TYPE_12__ {int /*<<< orphan*/  proc_name; int /*<<< orphan*/  res_type; int /*<<< orphan*/  res_prefix; struct TYPE_12__* next; } ;
typedef  TYPE_4__ proc_list ;
struct TYPE_9__ {TYPE_3__* versions; } ;
struct TYPE_10__ {TYPE_1__ pr; } ;
struct TYPE_13__ {TYPE_2__ def; } ;
typedef  TYPE_5__ definition ;

/* Variables and functions */
 int /*<<< orphan*/  RESULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ mtflag ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(definition *def)
{
	version_list *vp;
	proc_list *proc;

	for (vp = def->def.pr.versions; vp != NULL; vp = vp->next) {
		for (proc = vp->procs; proc != NULL; proc = proc->next) {
			FUNC0(fout, "\n");
			if (mtflag == 0) {
				FUNC3(proc->res_prefix, proc->res_type, 1);
				FUNC0(fout, "*\n");
				FUNC4(proc->proc_name, vp->vers_num);
				FUNC1(proc, RESULT, "clnt", "CLIENT *");
			} else {
				FUNC0(fout, "enum clnt_stat \n");
				FUNC4(proc->proc_name, vp->vers_num);
				FUNC1(proc, RESULT,  "clnt", "CLIENT *");

			}
			FUNC0(fout, "{\n");
			FUNC2(proc);

			FUNC0(fout, "}\n");
		}
	}
}