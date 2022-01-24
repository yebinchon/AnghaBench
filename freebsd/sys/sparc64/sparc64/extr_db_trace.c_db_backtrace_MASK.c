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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ u_long ;
struct trapframe {int /*<<< orphan*/  tf_tpc; } ;
struct thread {int dummy; } ;
struct frame {int /*<<< orphan*/  fr_fp; int /*<<< orphan*/  fr_pc; } ;
typedef  scalar_t__ db_expr_t ;
typedef  scalar_t__ db_addr_t ;
typedef  scalar_t__ c_db_sym_t ;

/* Variables and functions */
 scalar_t__ C_DB_SYM_NULL ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_PROC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPOFF ; 
 scalar_t__ FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  db_pager_quit ; 
 int FUNC2 (struct thread*,struct trapframe*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char const**,scalar_t__*) ; 
 scalar_t__ tl_text_begin ; 
 scalar_t__ tl_text_end ; 
 scalar_t__ tl_trap_begin ; 
 scalar_t__ tl_trap_end ; 

__attribute__((used)) static int
FUNC7(struct thread *td, struct frame *fp, int count)
{
	struct trapframe *tf;
	const char *name;
	c_db_sym_t sym;
	db_expr_t offset;
	db_expr_t value;
	db_addr_t npc;
	db_addr_t pc;
	int trap;
	int user;

	if (count == -1)
		count = 1024;

	trap = 0;
	user = 0;
	npc = 0;
	while (count-- && !user && !db_pager_quit) {
		pc = (db_addr_t)FUNC1((db_addr_t)&fp->fr_pc,
		    sizeof(fp->fr_pc), FALSE);
		if (trap) {
			pc = npc;
			trap = 0;
		}
		if (!FUNC0((vm_offset_t)pc))
			break;
		sym = FUNC5(pc, DB_STGY_ANY, &offset);
		if (sym == C_DB_SYM_NULL) {
			value = 0;
			name = NULL;
		} else
			FUNC6(sym, &name, &value);
		if (name == NULL)
			name = "(null)";
		fp = (struct frame *)(FUNC1((db_addr_t)&fp->fr_fp,
		   sizeof(fp->fr_fp), FALSE) + SPOFF);
		if ((value > (u_long)tl_trap_begin &&
		    value < (u_long)tl_trap_end) ||
		    (value > (u_long)tl_text_begin &&
		    value < (u_long)tl_text_end)) {
			tf = (struct trapframe *)(fp + 1);
			npc = FUNC1((db_addr_t)&tf->tf_tpc,
			    sizeof(tf->tf_tpc), FALSE);
			user = FUNC2(td, tf, count);
			trap = 1;
		} else {
			FUNC3("%s() at ", name);
			FUNC4(pc, DB_STGY_PROC);
			FUNC3("\n");
		}
	}
	return (0);
}