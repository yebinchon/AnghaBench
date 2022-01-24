#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trapframe_vm86 {int /*<<< orphan*/  tf_vm86_gs; } ;
struct db_variable {int dummy; } ;
typedef  int /*<<< orphan*/  db_expr_t ;
struct TYPE_2__ {int tf_eflags; } ;

/* Variables and functions */
 int DB_VAR_GET ; 
 int PSL_VM ; 
 TYPE_1__* kdb_frame ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(struct db_variable *vp, db_expr_t *valuep, int op)
{
	struct trapframe_vm86 *tfp;

	if (kdb_frame != NULL && kdb_frame->tf_eflags & PSL_VM) {
		tfp = (void *)kdb_frame;
		if (op == DB_VAR_GET)
			*valuep = tfp->tf_vm86_gs;
		else
			tfp->tf_vm86_gs = *valuep;
		return (1);
	}
	if (op == DB_VAR_GET)
		*valuep = FUNC1();
	else
		FUNC0(*valuep);
	return (1);
}