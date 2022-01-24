#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct unwind_state {int /*<<< orphan*/  fp; int /*<<< orphan*/  sp; int /*<<< orphan*/  pc; } ;
typedef  scalar_t__ db_expr_t ;
typedef  scalar_t__ c_db_sym_t ;

/* Variables and functions */
 scalar_t__ C_DB_SYM_NULL ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_PROC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const**,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct unwind_state*) ; 

__attribute__((used)) static void
FUNC5(struct unwind_state *frame)
{
	const char *name;
	db_expr_t offset;
	db_expr_t value;
	c_db_sym_t sym;
	uint64_t pc;

	while (1) {
		pc = frame->pc;

		if (FUNC4(frame) < 0)
			break;

		sym = FUNC2(pc, DB_STGY_ANY, &offset);
		if (sym == C_DB_SYM_NULL) {
			value = 0;
			name = "(null)";
		} else
			FUNC3(sym, &name, &value);

		FUNC0("%s() at ", name);
		FUNC1(frame->pc, DB_STGY_PROC);
		FUNC0("\n");

		FUNC0("\t pc = 0x%016lx ra = 0x%016lx\n",
		    pc, frame->pc);
		FUNC0("\t sp = 0x%016lx fp = 0x%016lx\n",
		    frame->sp, frame->fp);
		FUNC0("\n");
	}
}