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
typedef  size_t u_long ;
struct trapframe {int /*<<< orphan*/  tf_tpc; int /*<<< orphan*/ * tf_out; int /*<<< orphan*/  tf_pil; int /*<<< orphan*/  tf_level; int /*<<< orphan*/ * tf_global; int /*<<< orphan*/  tf_tar; int /*<<< orphan*/  tf_sfsr; int /*<<< orphan*/  tf_sfar; int /*<<< orphan*/  tf_type; } ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_2__* p_sysent; } ;
typedef  int /*<<< orphan*/  db_expr_t ;
typedef  void* db_addr_t ;
typedef  int /*<<< orphan*/  c_db_sym_t ;
struct TYPE_4__ {size_t sv_size; int /*<<< orphan*/  sv_name; TYPE_1__* sv_table; } ;
struct TYPE_3__ {scalar_t__ sy_call; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_PROC ; 
 int /*<<< orphan*/  DB_SYM_NULL ; 
 int /*<<< orphan*/  FALSE ; 
#define  T_DATA_EXCEPTION 135 
#define  T_DATA_MISS 134 
#define  T_DATA_PROTECTION 133 
#define  T_INSTRUCTION_EXCEPTION 132 
#define  T_INSTRUCTION_MISS 131 
#define  T_INTERRUPT 130 
 size_t T_KERNEL ; 
#define  T_MEM_ADDRESS_NOT_ALIGNED 129 
#define  T_SYSCALL 128 
 void* FUNC0 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,struct trapframe*,int) ; 
 int /*<<< orphan*/ * trap_msg ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct trapframe *tf, int count)
{
	struct proc *p;
	const char *symname;
	c_db_sym_t sym;
	db_expr_t diff;
	db_addr_t func;
	db_addr_t tpc;
	u_long type;
	u_long sfar;
	u_long sfsr;
	u_long tar;
	u_long level;
	u_long pil;
	u_long code;
	u_long o7;
	int user;

	p = td->td_proc;
	type = FUNC0((db_addr_t)&tf->tf_type,
	    sizeof(tf->tf_type), FALSE);
	FUNC1("-- %s", trap_msg[type & ~T_KERNEL]);
	switch (type & ~T_KERNEL) {
	case T_DATA_PROTECTION:
		tar = (u_long)FUNC0((db_addr_t)&tf->tf_tar,
		    sizeof(tf->tf_tar), FALSE);
		FUNC1(" tar=%#lx", tar);
		/* fall through */
	case T_DATA_EXCEPTION:
	case T_INSTRUCTION_EXCEPTION:
	case T_MEM_ADDRESS_NOT_ALIGNED:
		sfar = (u_long)FUNC0((db_addr_t)&tf->tf_sfar,
		    sizeof(tf->tf_sfar), FALSE);
		sfsr = (u_long)FUNC0((db_addr_t)&tf->tf_sfsr,
		    sizeof(tf->tf_sfsr), FALSE);
		FUNC1(" sfar=%#lx sfsr=%#lx", sfar, sfsr);
		break;
	case T_DATA_MISS:
	case T_INSTRUCTION_MISS:
		tar = (u_long)FUNC0((db_addr_t)&tf->tf_tar,
		    sizeof(tf->tf_tar), FALSE);
		FUNC1(" tar=%#lx", tar);
		break;
	case T_SYSCALL:
		code = FUNC0((db_addr_t)&tf->tf_global[1],
		    sizeof(tf->tf_global[1]), FALSE);
		FUNC1(" (%ld", code);
		if (code >= 0 && code < p->p_sysent->sv_size) {
			func = (db_addr_t)p->p_sysent->sv_table[code].sy_call;
			sym = FUNC3(func, DB_STGY_ANY, &diff);
			if (sym != DB_SYM_NULL && diff == 0) {
				FUNC4(sym, &symname, NULL);
				FUNC1(", %s, %s", p->p_sysent->sv_name,
				    symname);
			}
			FUNC1(")");
		}
		break;
	case T_INTERRUPT:
		level = (u_long)FUNC0((db_addr_t)&tf->tf_level,
		    sizeof(tf->tf_level), FALSE);
		pil = (u_long)FUNC0((db_addr_t)&tf->tf_pil,
		    sizeof(tf->tf_pil), FALSE);
		FUNC1(" level=%#lx pil=%#lx", level, pil);
		break;
	default:
		break;
	}
	o7 = (u_long)FUNC0((db_addr_t)&tf->tf_out[7],
	    sizeof(tf->tf_out[7]), FALSE);
	FUNC1(" %%o7=%#lx --\n", o7);
	user = (type & T_KERNEL) == 0;
	if (user) {
		tpc = FUNC0((db_addr_t)&tf->tf_tpc,
		    sizeof(tf->tf_tpc), FALSE);
		FUNC1("userland() at ");
		FUNC2(tpc, DB_STGY_PROC);
		FUNC1("\n");
		FUNC5(td, tf, count);
	}
	return (user);
}