#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  vers_num; } ;
typedef  TYPE_1__ version_list ;
struct TYPE_7__ {int /*<<< orphan*/  proc_name; int /*<<< orphan*/  res_type; int /*<<< orphan*/  res_prefix; } ;
typedef  TYPE_2__ proc_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ mtflag ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(proc_list *proc, version_list *vp, const char *addargtype, int server_p)
{
	if (mtflag) {/* Print MT style stubs */
		if (server_p)
			FUNC0(fout, "bool_t ");
		else
			FUNC0(fout, "enum clnt_stat ");
	} else {
		FUNC2(proc->res_prefix, proc->res_type, 1);
		FUNC0(fout, "* ");
	}
	if (server_p)
		FUNC4(proc->proc_name, vp->vers_num);
	else
		FUNC3(proc->proc_name, vp->vers_num);

	FUNC1(proc, addargtype);
}