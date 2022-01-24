#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sy_call_t ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_2__* p_sysent; } ;
typedef  scalar_t__ db_expr_t ;
typedef  int /*<<< orphan*/  db_addr_t ;
typedef  scalar_t__ c_db_sym_t ;
struct TYPE_4__ {int sv_size; int /*<<< orphan*/  sv_name; TYPE_1__* sv_table; } ;
struct TYPE_3__ {int /*<<< orphan*/ * sy_call; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_ANY ; 
 scalar_t__ DB_SYM_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int number, struct thread *td)
{
	struct proc *p;
	c_db_sym_t sym;
	db_expr_t diff;
	sy_call_t *f;
	const char *symname;

	FUNC0(" (%d", number);
	p = (td != NULL) ? td->td_proc : NULL;
	if (p != NULL && 0 <= number && number < p->p_sysent->sv_size) {
		f = p->p_sysent->sv_table[number].sy_call;
		sym = FUNC1((db_addr_t)f, DB_STGY_ANY, &diff);
		if (sym != DB_SYM_NULL && diff == 0) {
			FUNC2(sym, &symname, NULL);
			FUNC0(", %s, %s", p->p_sysent->sv_name, symname);
		}
	}
	FUNC0(")");
}